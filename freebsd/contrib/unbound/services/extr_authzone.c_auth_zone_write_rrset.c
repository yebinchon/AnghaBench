
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_zone {int dclass; } ;
struct auth_rrset {TYPE_1__* data; int type; } ;
struct auth_data {int namelen; int name; } ;
typedef int buf ;
struct TYPE_2__ {size_t count; size_t rrsig_count; } ;
typedef int FILE ;


 int LDNS_RR_BUF_SIZE ;
 int VERB_ALGO ;
 int auth_rr_to_string (int ,int ,int ,int ,TYPE_1__*,size_t,char*,int) ;
 int strlen (char*) ;
 int verbose (int ,char*,int) ;
 int write_out (int *,char*,int ) ;

__attribute__((used)) static int
auth_zone_write_rrset(struct auth_zone* z, struct auth_data* node,
 struct auth_rrset* r, FILE* out)
{
 size_t i, count = r->data->count + r->data->rrsig_count;
 char buf[LDNS_RR_BUF_SIZE];
 for(i=0; i<count; i++) {
  if(!auth_rr_to_string(node->name, node->namelen, r->type,
   z->dclass, r->data, i, buf, sizeof(buf))) {
   verbose(VERB_ALGO, "failed to rr2str rr %d", (int)i);
   continue;
  }
  if(!write_out(out, buf, strlen(buf)))
   return 0;
 }
 return 1;
}
