
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 int addlen (size_t,char**,size_t*) ;
 int errno ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static int
addstr(const char *src, size_t len, char **buf, size_t *buflen) {
 if (len >= *buflen) {
  errno = ENOSPC;
  return (-1);
 }
 memcpy(*buf, src, len);
 addlen(len, buf, buflen);
 **buf = '\0';
 return (0);
}
