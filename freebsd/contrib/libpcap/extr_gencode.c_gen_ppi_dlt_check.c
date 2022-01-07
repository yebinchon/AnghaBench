
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int k; } ;
struct slist {TYPE_1__ s; } ;
struct TYPE_8__ {int k; } ;
struct block {TYPE_2__ s; struct slist* stmts; } ;
struct TYPE_9__ {scalar_t__ linktype; } ;
typedef TYPE_3__ compiler_state_t ;


 int BPF_ABS ;
 int BPF_JEQ ;
 int BPF_LD ;
 int BPF_W ;
 int DLT_IEEE802_11 ;
 scalar_t__ DLT_PPI ;
 int JMP (int ) ;
 int SWAPLONG (int ) ;
 struct block* new_block (TYPE_3__*,int ) ;
 struct slist* new_stmt (TYPE_3__*,int) ;

__attribute__((used)) static struct block *
gen_ppi_dlt_check(compiler_state_t *cstate)
{
 struct slist *s_load_dlt;
 struct block *b;

 if (cstate->linktype == DLT_PPI)
 {


  s_load_dlt = new_stmt(cstate, BPF_LD|BPF_W|BPF_ABS);
  s_load_dlt->s.k = 4;

  b = new_block(cstate, JMP(BPF_JEQ));

  b->stmts = s_load_dlt;
  b->s.k = SWAPLONG(DLT_IEEE802_11);
 }
 else
 {
  b = ((void*)0);
 }

 return b;
}
