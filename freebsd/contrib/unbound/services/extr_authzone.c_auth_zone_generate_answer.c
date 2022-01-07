
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zname ;
typedef int tpstr ;
struct regional {int dummy; } ;
struct query_info {int qtype; int qname_len; int qname; } ;
struct dns_msg {int dummy; } ;
struct auth_zone {int fallback_enabled; int namelen; int name; } ;
struct auth_rrset {int type; } ;
struct auth_data {int namelen; int name; } ;
typedef int rrstr ;
typedef int qname ;
typedef int nname ;
typedef int cename ;


 scalar_t__ VERB_ALGO ;
 int az_find_ce (struct auth_zone*,struct query_info*,struct auth_data*,int,struct auth_data**,struct auth_rrset**) ;
 int az_find_domain (struct auth_zone*,struct query_info*,int*,struct auth_data**) ;
 int az_generate_answer_nonexistnode (struct auth_zone*,struct query_info*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*,struct auth_data*) ;
 int az_generate_answer_with_node (struct auth_zone*,struct query_info*,struct regional*,struct dns_msg*,struct auth_data*) ;
 int log_info (char*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 struct dns_msg* msg_create (struct regional*,struct query_info*) ;
 int sldns_wire2str_dname_buf (int ,int ,char*,int) ;
 int sldns_wire2str_type_buf (int ,char*,int) ;
 int snprintf (char*,int,char*) ;
 scalar_t__ verbosity ;

__attribute__((used)) static int
auth_zone_generate_answer(struct auth_zone* z, struct query_info* qinfo,
 struct regional* region, struct dns_msg** msg, int* fallback)
{
 struct auth_data* node, *ce;
 struct auth_rrset* rrset;
 int node_exact, node_exists;

 *fallback = z->fallback_enabled;
 if(!(*msg=msg_create(region, qinfo))) return 0;


 az_find_domain(z, qinfo, &node_exact, &node);





 node_exists = az_find_ce(z, qinfo, node, node_exact, &ce, &rrset);

 if(verbosity >= VERB_ALGO) {
  char zname[256], qname[256], nname[256], cename[256],
   tpstr[32], rrstr[32];
  sldns_wire2str_dname_buf(qinfo->qname, qinfo->qname_len, qname,
   sizeof(qname));
  sldns_wire2str_type_buf(qinfo->qtype, tpstr, sizeof(tpstr));
  sldns_wire2str_dname_buf(z->name, z->namelen, zname,
   sizeof(zname));
  if(node)
   sldns_wire2str_dname_buf(node->name, node->namelen,
    nname, sizeof(nname));
  else snprintf(nname, sizeof(nname), "NULL");
  if(ce)
   sldns_wire2str_dname_buf(ce->name, ce->namelen,
    cename, sizeof(cename));
  else snprintf(cename, sizeof(cename), "NULL");
  if(rrset) sldns_wire2str_type_buf(rrset->type, rrstr,
   sizeof(rrstr));
  else snprintf(rrstr, sizeof(rrstr), "NULL");
  log_info("auth_zone %s query %s %s, domain %s %s %s, "
   "ce %s, rrset %s", zname, qname, tpstr, nname,
   (node_exact?"exact":"notexact"),
   (node_exists?"exist":"notexist"), cename, rrstr);
 }

 if(node_exists) {

  return az_generate_answer_with_node(z, qinfo, region, *msg,
   node);
 }
 return az_generate_answer_nonexistnode(z, qinfo, region, *msg,
  ce, rrset, node);
}
