
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kexalg {int ec_nid; int hash_alg; int type; } ;
struct kex {char* name; int ec_nid; int hash_alg; int kex_type; } ;


 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_NO_KEX_ALG_MATCH ;
 int debug (char*,char*) ;
 struct kexalg* kex_alg_by_name (char*) ;
 char* match_list (char*,char*,int *) ;

__attribute__((used)) static int
choose_kex(struct kex *k, char *client, char *server)
{
 const struct kexalg *kexalg;

 k->name = match_list(client, server, ((void*)0));

 debug("kex: algorithm: %s", k->name ? k->name : "(no match)");
 if (k->name == ((void*)0))
  return SSH_ERR_NO_KEX_ALG_MATCH;
 if ((kexalg = kex_alg_by_name(k->name)) == ((void*)0))
  return SSH_ERR_INTERNAL_ERROR;
 k->kex_type = kexalg->type;
 k->hash_alg = kexalg->hash_alg;
 k->ec_nid = kexalg->ec_nid;
 return 0;
}
