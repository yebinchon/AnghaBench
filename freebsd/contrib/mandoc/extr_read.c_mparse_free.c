
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mparse {int secondary; int roff; TYPE_1__* man; } ;
struct TYPE_2__ {int manmac; int mdocmac; } ;


 int free (struct mparse*) ;
 int free_buf_list (int ) ;
 int roff_free (int ) ;
 int roff_man_free (TYPE_1__*) ;
 int roffhash_free (int ) ;

void
mparse_free(struct mparse *curp)
{
 roffhash_free(curp->man->mdocmac);
 roffhash_free(curp->man->manmac);
 roff_man_free(curp->man);
 roff_free(curp->roff);
 free_buf_list(curp->secondary);
 free(curp);
}
