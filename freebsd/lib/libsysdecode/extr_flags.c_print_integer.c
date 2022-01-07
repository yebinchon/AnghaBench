
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int abort2 (char*,int ,int *) ;
 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
print_integer(FILE *fp, int val, int base)
{

 switch (base) {
 case 8:
  fprintf(fp, "0%o", val);
  break;
 case 10:
  fprintf(fp, "%d", val);
  break;
 case 16:
  fprintf(fp, "0x%x", val);
  break;
 default:
  abort2("bad base", 0, ((void*)0));
  break;
 }
}
