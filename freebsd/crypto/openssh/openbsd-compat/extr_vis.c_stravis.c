
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 char* realloc (char*,int) ;
 char* reallocarray (int *,int,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int strvis (char*,char const*,int) ;

int
stravis(char **outp, const char *src, int flag)
{
 char *buf;
 int len, serrno;

 buf = reallocarray(((void*)0), 4, strlen(src) + 1);
 if (buf == ((void*)0))
  return -1;
 len = strvis(buf, src, flag);
 serrno = errno;
 *outp = realloc(buf, len + 1);
 if (*outp == ((void*)0)) {
  *outp = buf;
  errno = serrno;
 }
 return (len);
}
