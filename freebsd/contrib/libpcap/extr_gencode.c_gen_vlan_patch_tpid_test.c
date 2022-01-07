
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct slist {int * next; } ;
struct block {TYPE_1__* head; } ;
struct TYPE_6__ {int is_vlan_vloffset; int off_linktype; int off_linkpl; } ;
typedef TYPE_2__ compiler_state_t ;
struct TYPE_5__ {int * stmts; } ;


 int gen_vlan_vloffset_add (TYPE_2__*,int *,int,struct slist*) ;
 int sappend (int *,int *) ;

__attribute__((used)) static void
gen_vlan_patch_tpid_test(compiler_state_t *cstate, struct block *b_tpid)
{
 struct slist s;


 s.next = ((void*)0);
 cstate->is_vlan_vloffset = 1;
 gen_vlan_vloffset_add(cstate, &cstate->off_linkpl, 4, &s);
 gen_vlan_vloffset_add(cstate, &cstate->off_linktype, 4, &s);


 sappend(s.next, b_tpid->head->stmts);
 b_tpid->head->stmts = s.next;
}
