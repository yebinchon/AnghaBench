
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int free (char*) ;
 int uuencode (int const*,int,char*,int) ;
 char* xreallocarray (int *,int,int) ;

void
dump_base64(FILE *fp, const u_char *data, u_int len)
{
 char *buf;
 int i, n;

 if (len > 65536) {
  fprintf(fp, "dump_base64: len > 65536\n");
  return;
 }
 buf = xreallocarray(((void*)0), 2, len);
 n = uuencode(data, len, buf, 2*len);
 for (i = 0; i < n; i++) {
  fprintf(fp, "%c", buf[i]);
  if (i % 70 == 69)
   fprintf(fp, "\n");
 }
 if (i % 70 != 69)
  fprintf(fp, "\n");
 free(buf);
}
