
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ENOSPC ;
 scalar_t__ addstr (char const*,int,char**,size_t*) ;
 int errno ;
 int * strchr (char*,int const) ;

__attribute__((used)) static int
charstr(const u_char *rdata, const u_char *edata, char **buf, size_t *buflen) {
 const u_char *odata = rdata;
 size_t save_buflen = *buflen;
 char *save_buf = *buf;

 if (addstr("\"", 1, buf, buflen) < 0)
  goto enospc;
 if (rdata < edata) {
  int n = *rdata;

  if (rdata + 1 + n <= edata) {
   rdata++;
   while (n-- > 0) {
    if (strchr("\n\"\\", *rdata) != ((void*)0))
     if (addstr("\\", 1, buf, buflen) < 0)
      goto enospc;
    if (addstr((const char *)rdata, 1,
        buf, buflen) < 0)
     goto enospc;
    rdata++;
   }
  }
 }
 if (addstr("\"", 1, buf, buflen) < 0)
  goto enospc;
 return (rdata - odata);
 enospc:
 errno = ENOSPC;
 *buf = save_buf;
 *buflen = save_buflen;
 return (-1);
}
