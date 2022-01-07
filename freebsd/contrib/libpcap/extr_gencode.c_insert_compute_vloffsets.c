
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int k; } ;
struct slist {TYPE_3__ s; } ;
struct block {struct slist* stmts; } ;
struct TYPE_17__ {int reg; } ;
struct TYPE_15__ {int reg; } ;
struct TYPE_14__ {int reg; scalar_t__ is_variable; } ;
struct TYPE_18__ {int outermostlinktype; TYPE_4__ off_linktype; TYPE_2__ off_linkpl; scalar_t__ is_vlan_vloffset; TYPE_1__ off_linkhdr; } ;
typedef TYPE_5__ compiler_state_t ;


 int BPF_IMM ;
 int BPF_LD ;
 int BPF_ST ;
 int BPF_W ;





 void* alloc_reg (TYPE_5__*) ;
 struct slist* gen_load_802_11_header_len (TYPE_5__*,struct slist*,struct slist*) ;
 struct slist* gen_load_avs_llprefixlen (TYPE_5__*) ;
 struct slist* gen_load_ppi_llprefixlen (TYPE_5__*) ;
 struct slist* gen_load_prism_llprefixlen (TYPE_5__*) ;
 struct slist* gen_load_radiotap_llprefixlen (TYPE_5__*) ;
 struct slist* new_stmt (TYPE_5__*,int) ;
 int sappend (struct slist*,struct slist*) ;

__attribute__((used)) static void
insert_compute_vloffsets(compiler_state_t *cstate, struct block *b)
{
 struct slist *s;






 if (cstate->off_linkpl.reg != -1 && cstate->off_linkhdr.is_variable &&
     cstate->off_linkhdr.reg == -1)
  cstate->off_linkhdr.reg = alloc_reg(cstate);
 switch (cstate->outermostlinktype) {

 case 128:
  s = gen_load_prism_llprefixlen(cstate);
  break;

 case 130:
  s = gen_load_avs_llprefixlen(cstate);
  break;

 case 131:
  s = gen_load_radiotap_llprefixlen(cstate);
  break;

 case 129:
  s = gen_load_ppi_llprefixlen(cstate);
  break;

 default:
  s = ((void*)0);
  break;
 }






 switch (cstate->outermostlinktype) {

 case 132:
 case 128:
 case 130:
 case 131:
 case 129:
  s = gen_load_802_11_header_len(cstate, s, b->stmts);
  break;
 }





 if (s == ((void*)0) && cstate->is_vlan_vloffset) {
  struct slist *s2;

  if (cstate->off_linkpl.reg == -1)
   cstate->off_linkpl.reg = alloc_reg(cstate);
  if (cstate->off_linktype.reg == -1)
   cstate->off_linktype.reg = alloc_reg(cstate);

  s = new_stmt(cstate, BPF_LD|BPF_W|BPF_IMM);
  s->s.k = 0;
  s2 = new_stmt(cstate, BPF_ST);
  s2->s.k = cstate->off_linkpl.reg;
  sappend(s, s2);
  s2 = new_stmt(cstate, BPF_ST);
  s2->s.k = cstate->off_linktype.reg;
  sappend(s, s2);
 }







 if (s != ((void*)0)) {
  sappend(s, b->stmts);
  b->stmts = s;
 }
}
