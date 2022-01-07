
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_mode; } ;
struct hast_resource {scalar_t__ hr_role; int hr_name; int * hr_remoteout; int * hr_remotein; int * hr_conn; int * hr_ctrl; int * hr_event; } ;
typedef int msg ;
typedef scalar_t__ mode_t ;


 scalar_t__ EBADF ;
 scalar_t__ HAST_ROLE_PRIMARY ;
 scalar_t__ HAST_ROLE_SECONDARY ;
 int LOG_WARNING ;
 int PJDLOG_ABORT (char*,char*) ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ S_IFSOCK ;
 int S_ISSOCK (scalar_t__) ;
 int _SC_OPEN_MAX ;
 char* dtype2str (scalar_t__) ;
 scalar_t__ errno ;
 scalar_t__ fstat (int,struct stat*) ;
 int pjdlog_errno (int ,char*) ;
 int pjdlog_fini () ;
 int pjdlog_init (int) ;
 int pjdlog_prefix_set (char*,int ,int ) ;
 int proto_descriptor (int *) ;
 int role2str (scalar_t__) ;
 int snprintf (char*,int,char*,int,...) ;
 char* strerror (scalar_t__) ;
 long sysconf (int ) ;

void
descriptors_assert(const struct hast_resource *res, int pjdlogmode)
{
 char msg[256];
 struct stat sb;
 long maxfd;
 bool isopen;
 mode_t mode;
 int fd;






 msg[0] = '\0';

 maxfd = sysconf(_SC_OPEN_MAX);
 if (maxfd == -1) {
  pjdlog_init(pjdlogmode);
  pjdlog_prefix_set("[%s] (%s) ", res->hr_name,
      role2str(res->hr_role));
  pjdlog_errno(LOG_WARNING, "sysconf(_SC_OPEN_MAX) failed");
  pjdlog_fini();
  maxfd = 16384;
 }
 for (fd = 0; fd <= maxfd; fd++) {
  if (fstat(fd, &sb) == 0) {
   isopen = 1;
   mode = sb.st_mode;
  } else if (errno == EBADF) {
   isopen = 0;
   mode = 0;
  } else {
   (void)snprintf(msg, sizeof(msg),
       "Unable to fstat descriptor %d: %s", fd,
       strerror(errno));
   break;
  }
  if (fd == STDIN_FILENO || fd == STDOUT_FILENO ||
      fd == STDERR_FILENO) {
   if (!isopen) {
    (void)snprintf(msg, sizeof(msg),
        "Descriptor %d (%s) is closed, but should be open.",
        fd, (fd == STDIN_FILENO ? "stdin" :
        (fd == STDOUT_FILENO ? "stdout" : "stderr")));
    break;
   }
  } else if (fd == proto_descriptor(res->hr_event)) {
   if (!isopen) {
    (void)snprintf(msg, sizeof(msg),
        "Descriptor %d (event) is closed, but should be open.",
        fd);
    break;
   }
   if (!S_ISSOCK(mode)) {
    (void)snprintf(msg, sizeof(msg),
        "Descriptor %d (event) is %s, but should be %s.",
        fd, dtype2str(mode), dtype2str(S_IFSOCK));
    break;
   }
  } else if (fd == proto_descriptor(res->hr_ctrl)) {
   if (!isopen) {
    (void)snprintf(msg, sizeof(msg),
        "Descriptor %d (ctrl) is closed, but should be open.",
        fd);
    break;
   }
   if (!S_ISSOCK(mode)) {
    (void)snprintf(msg, sizeof(msg),
        "Descriptor %d (ctrl) is %s, but should be %s.",
        fd, dtype2str(mode), dtype2str(S_IFSOCK));
    break;
   }
  } else if (res->hr_role == HAST_ROLE_PRIMARY &&
      fd == proto_descriptor(res->hr_conn)) {
   if (!isopen) {
    (void)snprintf(msg, sizeof(msg),
        "Descriptor %d (conn) is closed, but should be open.",
        fd);
    break;
   }
   if (!S_ISSOCK(mode)) {
    (void)snprintf(msg, sizeof(msg),
        "Descriptor %d (conn) is %s, but should be %s.",
        fd, dtype2str(mode), dtype2str(S_IFSOCK));
    break;
   }
  } else if (res->hr_role == HAST_ROLE_SECONDARY &&
      res->hr_conn != ((void*)0) &&
      fd == proto_descriptor(res->hr_conn)) {
   if (isopen) {
    (void)snprintf(msg, sizeof(msg),
        "Descriptor %d (conn) is open, but should be closed.",
        fd);
    break;
   }
  } else if (res->hr_role == HAST_ROLE_SECONDARY &&
      fd == proto_descriptor(res->hr_remotein)) {
   if (!isopen) {
    (void)snprintf(msg, sizeof(msg),
        "Descriptor %d (remote in) is closed, but should be open.",
        fd);
    break;
   }
   if (!S_ISSOCK(mode)) {
    (void)snprintf(msg, sizeof(msg),
        "Descriptor %d (remote in) is %s, but should be %s.",
        fd, dtype2str(mode), dtype2str(S_IFSOCK));
    break;
   }
  } else if (res->hr_role == HAST_ROLE_SECONDARY &&
      fd == proto_descriptor(res->hr_remoteout)) {
   if (!isopen) {
    (void)snprintf(msg, sizeof(msg),
        "Descriptor %d (remote out) is closed, but should be open.",
        fd);
    break;
   }
   if (!S_ISSOCK(mode)) {
    (void)snprintf(msg, sizeof(msg),
        "Descriptor %d (remote out) is %s, but should be %s.",
        fd, dtype2str(mode), dtype2str(S_IFSOCK));
    break;
   }
  } else {
   if (isopen) {
    (void)snprintf(msg, sizeof(msg),
        "Descriptor %d is open (%s), but should be closed.",
        fd, dtype2str(mode));
    break;
   }
  }
 }
 if (msg[0] != '\0') {
  pjdlog_init(pjdlogmode);
  pjdlog_prefix_set("[%s] (%s) ", res->hr_name,
      role2str(res->hr_role));
  PJDLOG_ABORT("%s", msg);
 }
}
