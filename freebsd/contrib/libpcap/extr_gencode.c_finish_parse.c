
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct block {int sense; int head; } ;
struct TYPE_7__ {int root; } ;
struct TYPE_8__ {TYPE_1__ ic; int snaplen; } ;
typedef TYPE_2__ compiler_state_t ;


 int backpatch (struct block*,int ) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_ppi_dlt_check (TYPE_2__*) ;
 int gen_retblk (TYPE_2__*,int ) ;
 int insert_compute_vloffsets (TYPE_2__*,int ) ;

void
finish_parse(compiler_state_t *cstate, struct block *p)
{
 struct block *ppi_dlt_check;
 insert_compute_vloffsets(cstate, p->head);
 ppi_dlt_check = gen_ppi_dlt_check(cstate);
 if (ppi_dlt_check != ((void*)0))
  gen_and(ppi_dlt_check, p);

 backpatch(p, gen_retblk(cstate, cstate->snaplen));
 p->sense = !p->sense;
 backpatch(p, gen_retblk(cstate, 0));
 cstate->ic.root = p->head;
}
