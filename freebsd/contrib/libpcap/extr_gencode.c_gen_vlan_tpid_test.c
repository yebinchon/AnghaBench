
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;


 int ETHERTYPE_8021AD ;
 int ETHERTYPE_8021Q ;
 int ETHERTYPE_8021QINQ ;
 struct block* gen_linktype (int *,int ) ;
 int gen_or (struct block*,struct block*) ;

__attribute__((used)) static struct block *
gen_vlan_tpid_test(compiler_state_t *cstate)
{
 struct block *b0, *b1;


 b0 = gen_linktype(cstate, ETHERTYPE_8021Q);
 b1 = gen_linktype(cstate, ETHERTYPE_8021AD);
 gen_or(b0,b1);
 b0 = b1;
 b1 = gen_linktype(cstate, ETHERTYPE_8021QINQ);
 gen_or(b0,b1);

 return b1;
}
