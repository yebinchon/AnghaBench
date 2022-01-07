
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int NFSREAD_MAX_SIZE ;
 int NFSREAD_MIN_SIZE ;
 scalar_t__ errno ;
 char* getenv (char*) ;
 int nfs_read_size ;
 int printf (char*,char*,...) ;
 int setenv (char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strtol (char*,char**,int ) ;

__attribute__((used)) static void
set_nfs_read_size(void)
{
 char *env, *end;
 char buf[10];

 if ((env = getenv("nfs.read_size")) != ((void*)0)) {
  errno = 0;
  nfs_read_size = (int)strtol(env, &end, 0);
  if (errno != 0 || *env == '\0' || *end != '\0') {
   printf("%s: bad value: \"%s\", defaulting to %d\n",
       "nfs.read_size", env, NFSREAD_MIN_SIZE);
   nfs_read_size = NFSREAD_MIN_SIZE;
  }
 }
 if (nfs_read_size < NFSREAD_MIN_SIZE) {
  printf("%s: bad value: \"%d\", defaulting to %d\n",
      "nfs.read_size", nfs_read_size, NFSREAD_MIN_SIZE);
  nfs_read_size = NFSREAD_MIN_SIZE;
 }
 if (nfs_read_size > NFSREAD_MAX_SIZE) {
  printf("%s: bad value: \"%d\", defaulting to %d\n",
      "nfs.read_size", nfs_read_size, NFSREAD_MIN_SIZE);
  nfs_read_size = NFSREAD_MAX_SIZE;
 }
 snprintf(buf, sizeof (buf), "%d", nfs_read_size);
 setenv("nfs.read_size", buf, 1);
}
