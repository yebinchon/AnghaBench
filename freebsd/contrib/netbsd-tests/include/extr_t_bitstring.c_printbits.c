
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitstr_t ;
typedef int FILE ;


 int bit_ffc (int *,int,int*) ;
 int bit_ffs (int *,int,int*) ;
 scalar_t__ bit_test (int *,int) ;
 int fprintf (int *,char*,char,...) ;

__attribute__((used)) static void
printbits(FILE *file, bitstr_t *b, int n)
{
 int i;
 int jc, js;

 bit_ffc(b, n, &jc);
 bit_ffs(b, n, &js);

 (void) fprintf(file, "%3d %3d ", jc, js);

 for (i=0; i < n; i++) {
  (void) fprintf(file, "%c", (bit_test(b, i) ? '1' : '0'));
 }

 (void) fprintf(file, "%c", '\n');
}
