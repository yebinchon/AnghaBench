
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; int kind; } ;
typedef int FILE ;
typedef TYPE_1__ Akind ;


 TYPE_1__* Lcheck () ;
 TYPE_1__* ccheck () ;
 scalar_t__ dalign ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 scalar_t__ fzcheck () ;
 TYPE_1__* icheck () ;
 int printf (char*) ;
 int * stdout ;

int
main()
{
 Akind *a = 0;
 int Ldef = 0;
 FILE *f;
 f = stdout;


 if (sizeof(double) == 2*sizeof(long))
  a = Lcheck();
 else if (sizeof(double) == 2*sizeof(int)) {
  Ldef = 1;
  a = icheck();
  }
 else if (sizeof(double) == sizeof(long))
  a = ccheck();
 if (a) {
  fprintf(f, "#define %s\n#define Arith_Kind_ASL %d\n",
   a->name, a->kind);
  if (Ldef)
   fprintf(f, "#define Long int\n#define Intcast (int)(long)\n");
  if (dalign)
   fprintf(f, "#define Double_Align\n");
  if (sizeof(char*) == 8)
   fprintf(f, "#define X64_bit_pointers\n");

  if (sizeof(long long) < 8)

   fprintf(f, "#define NO_LONG_LONG\n");
  if (a->kind <= 2 && fzcheck())
   fprintf(f, "#define Sudden_Underflow\n");
  return 0;
  }
 fprintf(f, "/* Unknown arithmetic */\n");
 return 1;
 }
