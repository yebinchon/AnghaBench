
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int curOptIdx; unsigned int origArgCt; int * origArgVect; } ;
typedef TYPE_1__ tOptions ;


 int fputc (char,int ) ;
 int fputs (int ,int ) ;
 int init_optct ;
 int print_quot_str (int ) ;
 int set_dash ;
 int stdout ;

__attribute__((used)) static void
print_reordering(tOptions * opts)
{
    unsigned int ix;

    fputs(set_dash, stdout);

    for (ix = opts->curOptIdx;
         ix < opts->origArgCt;
         ix++) {
        fputc(' ', stdout);
        print_quot_str(opts->origArgVect[ ix ]);
    }
    fputs(init_optct, stdout);
}
