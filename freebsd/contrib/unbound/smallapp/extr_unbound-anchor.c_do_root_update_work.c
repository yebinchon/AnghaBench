
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_result {int rcode; scalar_t__ secure; } ;


 scalar_t__ do_certupdate (char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,int,int,int) ;
 struct ub_result* fetch_root_key (char const*,char const*,char const*,char const*,int,int) ;
 int printf (char*,...) ;
 scalar_t__ probe_date_allows_certupdate (char const*) ;
 int provide_builtin (char const*,int*) ;
 int ub_resolve_free (struct ub_result*) ;
 scalar_t__ verb ;

__attribute__((used)) static int
do_root_update_work(const char* root_anchor_file, const char* root_cert_file,
 const char* urlname, const char* xmlname, const char* p7sname,
 const char* p7signer, const char* res_conf, const char* root_hints,
 const char* debugconf, int ip4only, int ip6only, int force,
 int res_conf_fallback, int port)
{
 struct ub_result* dnskey;
 int used_builtin = 0;
 int rcode;



 if(!provide_builtin(root_anchor_file, &used_builtin))
  return 0;



 dnskey = fetch_root_key(root_anchor_file, res_conf,
  root_hints, debugconf, ip4only, ip6only);
 rcode = dnskey->rcode;

 if (res_conf_fallback && res_conf && !dnskey->secure) {
  if (verb) printf("%s failed, retrying direct\n", res_conf);
  ub_resolve_free(dnskey);

  dnskey = fetch_root_key(root_anchor_file, ((void*)0),
   root_hints, debugconf, ip4only, ip6only);
  if (rcode != 0 && dnskey->rcode == 0) {
   res_conf = ((void*)0);
   rcode = 0;
  }
 }


 if(dnskey->secure && !force) {
  if(verb) printf("success: the anchor is ok\n");
  ub_resolve_free(dnskey);
  return used_builtin;
 }
 if(force && verb) printf("debug cert update forced\n");
 ub_resolve_free(dnskey);


 if((rcode == 0 &&
  probe_date_allows_certupdate(root_anchor_file)) || force) {
  if(do_certupdate(root_anchor_file, root_cert_file, urlname,
   xmlname, p7sname, p7signer, res_conf, root_hints,
   debugconf, ip4only, ip6only, port))
   return 1;
  return used_builtin;
 }
 if(verb) printf("fail: the anchor is NOT ok and could not be fixed\n");
 return used_builtin;
}
