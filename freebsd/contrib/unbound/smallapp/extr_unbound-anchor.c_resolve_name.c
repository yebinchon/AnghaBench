
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int dummy; } ;
struct ip_list {int dummy; } ;


 int LDNS_RR_CLASS_IN ;
 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 struct ub_ctx* create_unbound_context (char const*,char const*,char const*,int,int) ;
 int exit (int ) ;
 struct ip_list* parse_ip_addr (char const*,int) ;
 int printf (char*,char const*) ;
 int resolve_host_ip (struct ub_ctx*,char const*,int,int ,int ,struct ip_list**) ;
 int ub_ctx_delete (struct ub_ctx*) ;
 scalar_t__ verb ;

__attribute__((used)) static struct ip_list*
resolve_name(const char* host, int port, const char* res_conf,
 const char* root_hints, const char* debugconf, int ip4only, int ip6only)
{
 struct ub_ctx* ctx;
 struct ip_list* list = ((void*)0);

 if( (list=parse_ip_addr(host, port)) ) {
  return list;
 }


 ctx = create_unbound_context(res_conf, root_hints, debugconf,
         ip4only, ip6only);


 if(!ip6only) {
  resolve_host_ip(ctx, host, port, LDNS_RR_TYPE_A,
   LDNS_RR_CLASS_IN, &list);
 }


 if(!ip4only) {
  resolve_host_ip(ctx, host, port, LDNS_RR_TYPE_AAAA,
   LDNS_RR_CLASS_IN, &list);
 }

 ub_ctx_delete(ctx);
 if(!list) {
  if(verb) printf("%s has no IP addresses I can use\n", host);
  exit(0);
 }
 return list;
}
