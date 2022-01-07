
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int dummy; } ;


 int VERB_QUERY ;
 struct trust_anchor* anchor_store_new_key (struct val_anchors*,int *,int ,int ,int ,scalar_t__) ;
 int log_nametypeclass (int ,char*,int *,int ,int ) ;
 int sldns_wirerr_get_class (int *,size_t,size_t) ;
 scalar_t__ sldns_wirerr_get_rdatalen (int *,size_t,size_t) ;
 int sldns_wirerr_get_rdatawl (int *,size_t,size_t) ;
 int sldns_wirerr_get_type (int *,size_t,size_t) ;

__attribute__((used)) static struct trust_anchor*
anchor_store_new_rr(struct val_anchors* anchors, uint8_t* rr, size_t rl,
 size_t dl)
{
 struct trust_anchor* ta;
 if(!(ta=anchor_store_new_key(anchors, rr,
  sldns_wirerr_get_type(rr, rl, dl),
  sldns_wirerr_get_class(rr, rl, dl),
  sldns_wirerr_get_rdatawl(rr, rl, dl),
  sldns_wirerr_get_rdatalen(rr, rl, dl)+2))) {
  return ((void*)0);
 }
 log_nametypeclass(VERB_QUERY, "adding trusted key",
  rr, sldns_wirerr_get_type(rr, rl, dl),
  sldns_wirerr_get_class(rr, rl, dl));
 return ta;
}
