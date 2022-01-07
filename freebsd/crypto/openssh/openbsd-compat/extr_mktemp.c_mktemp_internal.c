
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 unsigned int INT_MAX ;



 unsigned int NUM_CHARS ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int S_IRUSR ;
 int S_IWUSR ;
 int S_IXUSR ;
 char* TEMPCHARS ;
 unsigned int arc4random_uniform (unsigned int) ;
 int errno ;
 int lstat (char*,struct stat*) ;
 int mkdir (char*,int) ;
 int open (char*,int,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static int
mktemp_internal(char *path, int slen, int mode)
{
 char *start, *cp, *ep;
 const char *tempchars = TEMPCHARS;
 unsigned int r, tries;
 struct stat sb;
 size_t len;
 int fd;

 len = strlen(path);
 if (len == 0 || slen < 0 || (size_t)slen >= len) {
  errno = EINVAL;
  return(-1);
 }
 ep = path + len - slen;

 tries = 1;
 for (start = ep; start > path && start[-1] == 'X'; start--) {
  if (tries < INT_MAX / NUM_CHARS)
   tries *= NUM_CHARS;
 }
 tries *= 2;

 do {
  for (cp = start; cp != ep; cp++) {
   r = arc4random_uniform(NUM_CHARS);
   *cp = tempchars[r];
  }

  switch (mode) {
  case 128:
   if (lstat(path, &sb) != 0)
    return(errno == ENOENT ? 0 : -1);
   break;
  case 129:
   fd = open(path, O_CREAT|O_EXCL|O_RDWR, S_IRUSR|S_IWUSR);
   if (fd != -1 || errno != EEXIST)
    return(fd);
   break;
  case 130:
   if (mkdir(path, S_IRUSR|S_IWUSR|S_IXUSR) == 0)
    return(0);
   if (errno != EEXIST)
    return(-1);
   break;
  }
 } while (--tries);

 errno = EEXIST;
 return(-1);
}
