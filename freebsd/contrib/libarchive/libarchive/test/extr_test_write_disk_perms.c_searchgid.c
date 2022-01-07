
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct stat {scalar_t__ st_gid; } ;
typedef unsigned int gid_t ;


 int O_BINARY ;
 int O_CREAT ;
 int _alt_gid ;
 scalar_t__ _default_gid ;
 int _invalid_gid ;
 int assert (int) ;
 int close (int) ;
 int failure (char*) ;
 scalar_t__ fchown (int,int ,unsigned int) ;
 scalar_t__ fstat (int,struct stat*) ;
 int getuid () ;
 int open (char*,int,int) ;

__attribute__((used)) static void
searchgid(void)
{
 static int _searched = 0;
 uid_t uid = getuid();
 gid_t gid = 0;
 unsigned int n;
 struct stat st;
 int fd;


 if (_searched)
  return;
 _searched = 1;


 fd = open("test_gid", O_CREAT | O_BINARY, 0664);
 failure("Couldn't create a file for gid testing.");
 assert(fd > 0);


 assert(fstat(fd, &st) == 0);
 _default_gid = st.st_gid;


 _invalid_gid = -1;

 for (gid = 1, n = 1; gid == n && n < 10000 ; n++, gid++) {
  if (fchown(fd, uid, gid) != 0) {
   _invalid_gid = gid;
   break;
  }
 }





 _alt_gid = -1;
 for (gid = 0, n = 0; gid == n && n < 10000 ; n++, gid++) {

  if (gid == (gid_t)_default_gid)
   continue;
  if (fchown(fd, uid, gid) == 0) {
   _alt_gid = gid;
   break;
  }
 }
 close(fd);
}
