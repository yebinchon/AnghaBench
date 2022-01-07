
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_buffer_t ;


 char* strchr (char const*,char) ;
 int xo_buf_append (int *,char const*,int) ;

__attribute__((used)) static void
csv_escape (xo_buffer_t *xbp, const char *value, size_t len)
{
    const char *cp, *ep, *np;

    for (cp = value, ep = value + len; cp && cp < ep; cp = np) {
 np = strchr(cp, '"');
 if (np) {
     np += 1;
     xo_buf_append(xbp, cp, np - cp);
     xo_buf_append(xbp, "\"", 1);
 } else
     xo_buf_append(xbp, cp, ep - cp);
    }
}
