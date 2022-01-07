
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;
 int TESTFQDN ;
 int errno ;
 size_t strlcpy (char*,int ,size_t) ;

int
gethostname(char *name, size_t namelen)
{
 if (strlcpy(name, TESTFQDN, namelen) > namelen) {
  errno = ENAMETOOLONG;
  return (-1);
 }
 return (0);
}
