
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ggd_export {int e_flags; int e_path; int e_mask; int e_ip; } ;
struct ggd_connection {int c_flags; int c_diskfd; } ;
struct g_gate_cinit {int gc_flags; } ;
typedef int ipmask ;


 int EPERM ;
 int GGATE_FLAG_RDONLY ;
 int GGATE_FLAG_WRONLY ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int errno ;
 int g_gate_log (int ,char*,int ,char*) ;
 char* ip2str (int ) ;
 int open (int ,int) ;
 char* strerror (int) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int
exports_check(struct ggd_export *ex, struct g_gate_cinit *cinit,
    struct ggd_connection *conn)
{
 char ipmask[32];
 int error = 0, flags;

 strlcpy(ipmask, ip2str(ex->e_ip), sizeof(ipmask));
 strlcat(ipmask, "/", sizeof(ipmask));
 strlcat(ipmask, ip2str(ex->e_mask), sizeof(ipmask));
 if ((cinit->gc_flags & GGATE_FLAG_RDONLY) != 0) {
  if (ex->e_flags == O_WRONLY) {
   g_gate_log(LOG_WARNING, "Read-only access requested, "
       "but %s (%s) is exported write-only.", ex->e_path,
       ipmask);
   return (EPERM);
  } else {
   conn->c_flags |= GGATE_FLAG_RDONLY;
  }
 } else if ((cinit->gc_flags & GGATE_FLAG_WRONLY) != 0) {
  if (ex->e_flags == O_RDONLY) {
   g_gate_log(LOG_WARNING, "Write-only access requested, "
       "but %s (%s) is exported read-only.", ex->e_path,
       ipmask);
   return (EPERM);
  } else {
   conn->c_flags |= GGATE_FLAG_WRONLY;
  }
 } else {
  if (ex->e_flags == O_RDONLY) {
   g_gate_log(LOG_WARNING, "Read-write access requested, "
       "but %s (%s) is exported read-only.", ex->e_path,
       ipmask);
   return (EPERM);
  } else if (ex->e_flags == O_WRONLY) {
   g_gate_log(LOG_WARNING, "Read-write access requested, "
       "but %s (%s) is exported write-only.", ex->e_path,
       ipmask);
   return (EPERM);
  }
 }
 if ((conn->c_flags & GGATE_FLAG_RDONLY) != 0)
  flags = O_RDONLY;
 else if ((conn->c_flags & GGATE_FLAG_WRONLY) != 0)
  flags = O_WRONLY;
 else
  flags = O_RDWR;
 conn->c_diskfd = open(ex->e_path, flags);
 if (conn->c_diskfd == -1) {
  error = errno;
  g_gate_log(LOG_ERR, "Cannot open %s: %s.", ex->e_path,
      strerror(error));
  return (error);
 }
 return (0);
}
