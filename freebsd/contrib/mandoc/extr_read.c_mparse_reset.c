
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mparse {scalar_t__ gzip; int * secondary; int man; int roff; } ;


 int free_buf_list (int *) ;
 int roff_man_reset (int ) ;
 int roff_reset (int ) ;

void
mparse_reset(struct mparse *curp)
{
 roff_reset(curp->roff);
 roff_man_reset(curp->man);
 free_buf_list(curp->secondary);
 curp->secondary = ((void*)0);
 curp->gzip = 0;
}
