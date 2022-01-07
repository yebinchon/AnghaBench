
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct known_hosts_ctx {int has_unhashed; int invalid; int out; } ;
struct hostkey_foreach_line {int status; char* line; char* rawkey; int linenum; int path; int * hosts; int marker; } ;


 int HASH_DELIM ;



 int MRK_NONE ;
 int fatal (char*) ;
 int find_host ;
 int fprintf (int ,char*,char*,...) ;
 int free (char*) ;
 char* host_hash (char*,int *,int ) ;
 int logit (char*,int ,int ,...) ;
 int lowercase (char*) ;
 scalar_t__ strcspn (int *,char*) ;
 scalar_t__ strlen (int *) ;
 char* strsep (char**,char*) ;
 char* xstrdup (int *) ;

__attribute__((used)) static int
known_hosts_hash(struct hostkey_foreach_line *l, void *_ctx)
{
 struct known_hosts_ctx *ctx = (struct known_hosts_ctx *)_ctx;
 char *hashed, *cp, *hosts, *ohosts;
 int has_wild = l->hosts && strcspn(l->hosts, "*?!") != strlen(l->hosts);
 int was_hashed = l->hosts && l->hosts[0] == HASH_DELIM;

 switch (l->status) {
 case 128:
 case 129:




  if (was_hashed || has_wild || l->marker != MRK_NONE) {
   fprintf(ctx->out, "%s\n", l->line);
   if (has_wild && !find_host) {
    logit("%s:%lu: ignoring host name "
        "with wildcard: %.64s", l->path,
        l->linenum, l->hosts);
   }
   return 0;
  }




  ohosts = hosts = xstrdup(l->hosts);
  while ((cp = strsep(&hosts, ",")) != ((void*)0) && *cp != '\0') {
   lowercase(cp);
   if ((hashed = host_hash(cp, ((void*)0), 0)) == ((void*)0))
    fatal("hash_host failed");
   fprintf(ctx->out, "%s %s\n", hashed, l->rawkey);
   ctx->has_unhashed = 1;
  }
  free(ohosts);
  return 0;
 case 130:

  ctx->invalid = 1;
  logit("%s:%lu: invalid line", l->path, l->linenum);

 default:
  fprintf(ctx->out, "%s\n", l->line);
  return 0;
 }

 return -1;
}
