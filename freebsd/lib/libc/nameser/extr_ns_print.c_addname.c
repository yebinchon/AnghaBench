
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ENOSPC ;
 int addlen (size_t,char**,size_t*) ;
 int dn_expand (int const*,int const*,int const*,char*,size_t) ;
 int errno ;
 size_t prune_origin (char*,char const*) ;

__attribute__((used)) static int
addname(const u_char *msg, size_t msglen,
 const u_char **pp, const char *origin,
 char **buf, size_t *buflen)
{
 size_t newlen, save_buflen = *buflen;
 char *save_buf = *buf;
 int n;

 n = dn_expand(msg, msg + msglen, *pp, *buf, *buflen);
 if (n < 0)
  goto enospc;
 newlen = prune_origin(*buf, origin);
 if (**buf == '\0') {
  goto root;
 } else if (newlen == 0U) {

  if (newlen + 2 > *buflen)
   goto enospc;
  (*buf)[newlen++] = '@';
  (*buf)[newlen] = '\0';
 } else {
  if (((origin == ((void*)0) || origin[0] == '\0') ||
      (origin[0] != '.' && origin[1] != '\0' &&
      (*buf)[newlen] == '\0')) && (*buf)[newlen - 1] != '.') {

 root:
   if (newlen + 2 > *buflen)
    goto enospc;
   (*buf)[newlen++] = '.';
   (*buf)[newlen] = '\0';
  }
 }
 *pp += n;
 addlen(newlen, buf, buflen);
 **buf = '\0';
 return (newlen);
 enospc:
 errno = ENOSPC;
 *buf = save_buf;
 *buflen = save_buflen;
 return (-1);
}
