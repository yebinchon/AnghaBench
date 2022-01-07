
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
typedef int FILE ;


 int fprintf (int *,char*,char const) ;

__attribute__((used)) static void
print_string(FILE *fp, const char *str, size_t len)
{
 u_int32_t i;

 if (len > 0) {
  for (i = 0; i < len; i++) {
   if (str[i] != '\0')
    fprintf(fp, "%c", str[i]);
  }
 }
}
