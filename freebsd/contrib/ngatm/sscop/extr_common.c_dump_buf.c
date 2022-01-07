
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int u_char ;


 int fprintf (int ,char*,...) ;
 int stderr ;

void
dump_buf(const char *w, const u_char *buf, size_t len)
{
 u_int i;

 fprintf(stderr, "%s %zu: ", w, len);
 for(i = 0; i < len; i++) {
  if (i % 4 == 0 && i != 0)
   fprintf(stderr, " ");
  fprintf(stderr, "%02x", *buf++);
 }
 fprintf(stderr, "\n");
}
