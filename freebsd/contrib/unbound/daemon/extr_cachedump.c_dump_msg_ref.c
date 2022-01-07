
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ flags; int rrset_class; int type; int dname_len; int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
typedef int RES ;


 int free (char*) ;
 int ntohs (int ) ;
 char* sldns_wire2str_class (int ) ;
 char* sldns_wire2str_dname (int ,int ) ;
 char* sldns_wire2str_type (int ) ;
 int ssl_printf (int *,char*,...) ;

__attribute__((used)) static int
dump_msg_ref(RES* ssl, struct ub_packed_rrset_key* k)
{
 char* nm, *tp, *cl;
 nm = sldns_wire2str_dname(k->rk.dname, k->rk.dname_len);
 tp = sldns_wire2str_type(ntohs(k->rk.type));
 cl = sldns_wire2str_class(ntohs(k->rk.rrset_class));
 if(!nm || !cl || !tp) {
  free(nm);
  free(tp);
  free(cl);
  return ssl_printf(ssl, "BADREF\n");
 }
 if(!ssl_printf(ssl, "%s %s %s %d\n", nm, cl, tp, (int)k->rk.flags)) {
  free(nm);
  free(tp);
  free(cl);
  return 0;
 }
 free(nm);
 free(tp);
 free(cl);

 return 1;
}
