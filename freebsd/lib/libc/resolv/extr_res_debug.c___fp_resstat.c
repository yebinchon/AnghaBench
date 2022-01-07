
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u_long ;
typedef TYPE_1__* res_state ;
struct TYPE_3__ {unsigned int options; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 char* p_option (unsigned int) ;
 int putc (char,int *) ;

void
fp_resstat(const res_state statp, FILE *file) {
 u_long mask;

 fprintf(file, ";; res options:");
 for (mask = 1; mask != 0U; mask <<= 1)
  if (statp->options & mask)
   fprintf(file, " %s", p_option(mask));
 putc('\n', file);
}
