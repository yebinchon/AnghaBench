
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;
 int efunc (int,char*,size_t,size_t) ;
 int errno ;
 size_t strlcpy (char*,char const*,size_t) ;
 int stub1 (int,char*,size_t,size_t) ;

size_t
estrlcpy(char *dst, const char *src, size_t len)
{
 size_t rv;
 if ((rv = strlcpy(dst, src, len)) >= len) {
  errno = ENAMETOOLONG;
  (*efunc)(1,
      "Cannot copy string; %zu chars needed %zu provided",
      rv, len);
 }
 return rv;
}
