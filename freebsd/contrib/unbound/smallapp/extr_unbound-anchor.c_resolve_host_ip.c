
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_result {int * len; scalar_t__* data; scalar_t__ rcode; int havedata; } ;
struct ub_ctx {int dummy; } ;
struct ip_list {struct ip_list* next; } ;


 int LDNS_RR_TYPE_A ;
 struct ip_list* RR_to_ip (int,scalar_t__,int ,int) ;
 int exit (int ) ;
 int printf (char*,...) ;
 int ub_ctx_delete (struct ub_ctx*) ;
 int ub_resolve (struct ub_ctx*,char const*,int,int,struct ub_result**) ;
 int ub_resolve_free (struct ub_result*) ;
 char* ub_strerror (int) ;
 scalar_t__ verb ;

__attribute__((used)) static void
resolve_host_ip(struct ub_ctx* ctx, const char* host, int port, int tp, int cl,
 struct ip_list** head)
{
 struct ub_result* res = ((void*)0);
 int r;
 int i;

 r = ub_resolve(ctx, host, tp, cl, &res);
 if(r) {
  if(verb) printf("error: resolve %s %s: %s\n", host,
   (tp==LDNS_RR_TYPE_A)?"A":"AAAA", ub_strerror(r));
  return;
 }
 if(!res) {
  if(verb) printf("out of memory\n");
  ub_ctx_delete(ctx);
  exit(0);
 }
 if(!res->havedata || res->rcode || !res->data) {
  if(verb) printf("resolve %s %s: no result\n", host,
   (tp==LDNS_RR_TYPE_A)?"A":"AAAA");
  return;
 }
 for(i = 0; res->data[i]; i++) {
  struct ip_list* ip = RR_to_ip(tp, res->data[i], res->len[i],
   port);
  if(!ip) continue;
  ip->next = *head;
  *head = ip;
 }
 ub_resolve_free(res);
}
