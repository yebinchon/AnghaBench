
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_result {int dummy; } ;
struct ub_ctx {int dummy; } ;


 int add_5011_probe_root (struct ub_ctx*,char const*) ;
 struct ub_ctx* create_unbound_context (char const*,char const*,char const*,int,int) ;
 struct ub_result* prime_root_key (struct ub_ctx*) ;
 int ub_ctx_delete (struct ub_ctx*) ;

__attribute__((used)) static struct ub_result *
fetch_root_key(const char* root_anchor_file, const char* res_conf,
 const char* root_hints, const char* debugconf,
 int ip4only, int ip6only)
{
 struct ub_ctx* ctx;
 struct ub_result* dnskey;

 ctx = create_unbound_context(res_conf, root_hints, debugconf,
  ip4only, ip6only);
 add_5011_probe_root(ctx, root_anchor_file);
 dnskey = prime_root_key(ctx);
 ub_ctx_delete(ctx);
 return dnskey;
}
