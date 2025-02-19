
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int fprintf (int ,char*,...) ;
 scalar_t__ isascii (int) ;
 scalar_t__ isprint (int) ;
 int stderr ;

__attribute__((used)) static void
dump(u_char *p, size_t len)
{
 size_t i, j;

 for (i = 0; i < len; i += 16) {
  fprintf(stderr, "%.4zd: ", i);
  for (j = i; j < i + 16; j++) {
   if (j < len)
    fprintf(stderr, "%02x ", p[j]);
   else
    fprintf(stderr, "   ");
  }
  fprintf(stderr, " ");
  for (j = i; j < i + 16; j++) {
   if (j < len) {
    if (isascii(p[j]) && isprint(p[j]))
     fprintf(stderr, "%c", p[j]);
    else
     fprintf(stderr, ".");
   }
  }
  fprintf(stderr, "\n");
 }
}
