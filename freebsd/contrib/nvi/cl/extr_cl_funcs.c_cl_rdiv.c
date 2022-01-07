
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rows; scalar_t__ coff; scalar_t__ cols; int roff; } ;
typedef TYPE_1__ SCR ;


 char ACS_VLINE ;
 int mvvline (int ,scalar_t__,char,int ) ;

__attribute__((used)) static void
cl_rdiv(SCR *sp)
{



 mvvline(sp->roff, sp->cols + sp->coff, ACS_VLINE, sp->rows);

}
