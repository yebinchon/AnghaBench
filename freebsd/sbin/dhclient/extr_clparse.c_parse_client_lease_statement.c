
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct interface_info {TYPE_2__* client; } ;
struct TYPE_3__ {scalar_t__ len; int iabuf; } ;
struct client_lease {int is_static; scalar_t__ expiry; struct client_lease* next; TYPE_1__ address; } ;
struct TYPE_4__ {struct client_lease* active; struct client_lease* leases; struct client_lease* alias; } ;
typedef int FILE ;


 int EOF ;
 int LBRACE ;
 int RBRACE ;
 scalar_t__ cur_time ;
 int error (char*) ;
 int free_client_lease (struct client_lease*) ;
 int make_client_state (struct interface_info*) ;
 struct client_lease* malloc (int) ;
 int memcmp (int ,int ,scalar_t__) ;
 int memset (struct client_lease*,int ,int) ;
 int next_token (char**,int *) ;
 int parse_client_lease_declaration (int *,struct client_lease*,struct interface_info**) ;
 int parse_warn (char*) ;
 int peek_token (char**,int *) ;
 int skip_to_semi (int *) ;

void
parse_client_lease_statement(FILE *cfile, int is_static)
{
 struct client_lease *lease, *lp, *pl;
 struct interface_info *ip;
 int token;
 char *val;

 token = next_token(&val, cfile);
 if (token != LBRACE) {
  parse_warn("expecting left brace.");
  skip_to_semi(cfile);
  return;
 }

 lease = malloc(sizeof(struct client_lease));
 if (!lease)
  error("no memory for lease.");
 memset(lease, 0, sizeof(*lease));
 lease->is_static = is_static;

 ip = ((void*)0);

 do {
  token = peek_token(&val, cfile);
  if (token == EOF) {
   parse_warn("unterminated lease declaration.");
   free_client_lease(lease);
   return;
  }
  if (token == RBRACE)
   break;
  parse_client_lease_declaration(cfile, lease, &ip);
 } while (1);
 token = next_token(&val, cfile);




 if (!ip) {
  free_client_lease(lease);
  return;
 }


 if (!ip->client)
  make_client_state(ip);


 if (is_static == 2) {
  ip->client->alias = lease;
  return;
 }







 pl = ((void*)0);
 for (lp = ip->client->leases; lp; lp = lp->next) {
  if (lp->address.len == lease->address.len &&
      !memcmp(lp->address.iabuf, lease->address.iabuf,
      lease->address.len)) {
   if (pl)
    pl->next = lp->next;
   else
    ip->client->leases = lp->next;
   free_client_lease(lp);
   break;
  }
 }





 if (is_static) {
  lease->next = ip->client->leases;
  ip->client->leases = lease;
  return;
 }
 if (ip->client->active) {
  if (ip->client->active->expiry < cur_time)
   free_client_lease(ip->client->active);
  else if (ip->client->active->address.len ==
      lease->address.len &&
      !memcmp(ip->client->active->address.iabuf,
      lease->address.iabuf, lease->address.len))
   free_client_lease(ip->client->active);
  else {
   ip->client->active->next = ip->client->leases;
   ip->client->leases = ip->client->active;
  }
 }
 ip->client->active = lease;


}
