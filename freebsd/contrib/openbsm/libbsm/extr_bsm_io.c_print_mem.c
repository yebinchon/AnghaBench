
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
typedef int u_char ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
print_mem(FILE *fp, u_char *data, size_t len)
{
 u_int32_t i;

 if (len > 0) {
  fprintf(fp, "0x");
  for (i = 0; i < len; i++)
   fprintf(fp, "%02x", data[i]);
 }
}
