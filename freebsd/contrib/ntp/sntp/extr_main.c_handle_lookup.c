
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dns_ctx {char* name; int flags; int key_id; int * key; int timeout; } ;
struct addrinfo {int ai_flags; int ai_protocol; int ai_socktype; int ai_family; } ;


 int AI_CANONNAME ;
 int AUTHENTICATION ;
 scalar_t__ ENABLED_OPT (int ) ;
 int IPPROTO_UDP ;
 int KEYFILE ;
 char* OPT_ARG (int ) ;
 int OPT_VALUE_AUTHENTICATION ;
 int SOCK_DGRAM ;
 int TRACE (int,char*) ;
 int ZERO (struct addrinfo) ;
 int Z_AI_NUMERICSERV ;
 int ai_fam_pref ;
 struct dns_ctx* emalloc_zero (size_t) ;
 int exit (int) ;
 int fprintf (int ,char*,char*,int,char*) ;
 int get_key (int,int **) ;
 int getaddrinfo_sometime (char const*,char*,struct addrinfo*,int ,int *,struct dns_ctx*) ;
 int memcpy (char*,char const*,size_t) ;
 int n_pending_dns ;
 char* progname ;
 int response_tv ;
 int sntp_name_resolved ;
 int stderr ;
 int strlen (char const*) ;

void
handle_lookup(
 const char *name,
 int flags
 )
{
 struct addrinfo hints;
 struct dns_ctx *ctx;
 char * name_copy;
 size_t name_sz;
 size_t octets;

 TRACE(1, ("handle_lookup(%s,%#x)\n", name, flags));

 ZERO(hints);
 hints.ai_family = ai_fam_pref;
 hints.ai_flags = AI_CANONNAME | Z_AI_NUMERICSERV;





 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_protocol = IPPROTO_UDP;

 name_sz = 1 + strlen(name);
 octets = sizeof(*ctx) + name_sz;
 ctx = emalloc_zero(octets);
 name_copy = (char *)(ctx + 1);
 memcpy(name_copy, name, name_sz);
 ctx->name = name_copy;
 ctx->flags = flags;
 ctx->timeout = response_tv;
 ctx->key = ((void*)0);


 if (ENABLED_OPT(AUTHENTICATION)) {
  ctx->key_id = OPT_VALUE_AUTHENTICATION;
  get_key(ctx->key_id, &ctx->key);
  if (((void*)0) == ctx->key) {
   fprintf(stderr, "%s: Authentication with keyID %d requested, but no matching keyID found in <%s>!\n",
    progname, ctx->key_id, OPT_ARG(KEYFILE));
   exit(1);
  }
 } else {
  ctx->key_id = -1;
 }

 ++n_pending_dns;
 getaddrinfo_sometime(name, "123", &hints, 0,
        &sntp_name_resolved, ctx);
}
