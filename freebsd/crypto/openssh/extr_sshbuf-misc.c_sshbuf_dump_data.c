
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 scalar_t__ isascii (int const) ;
 scalar_t__ isprint (int const) ;

void
sshbuf_dump_data(const void *s, size_t len, FILE *f)
{
 size_t i, j;
 const u_char *p = (const u_char *)s;

 for (i = 0; i < len; i += 16) {
  fprintf(f, "%.4zu: ", i);
  for (j = i; j < i + 16; j++) {
   if (j < len)
    fprintf(f, "%02x ", p[j]);
   else
    fprintf(f, "   ");
  }
  fprintf(f, " ");
  for (j = i; j < i + 16; j++) {
   if (j < len) {
    if (isascii(p[j]) && isprint(p[j]))
     fprintf(f, "%c", p[j]);
    else
     fprintf(f, ".");
   }
  }
  fprintf(f, "\n");
 }
}
