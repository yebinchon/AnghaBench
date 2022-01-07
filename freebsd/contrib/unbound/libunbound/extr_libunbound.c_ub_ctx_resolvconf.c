
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ub_ctx {int dummy; } ;
typedef int buf ;
typedef int ULONG ;
struct TYPE_6__ {char* String; } ;
struct TYPE_7__ {struct TYPE_7__* Next; TYPE_1__ IpAddress; } ;
struct TYPE_8__ {TYPE_2__ DnsServerList; } ;
typedef TYPE_2__ IP_ADDR_STRING ;
typedef TYPE_3__ FIXED_INFO ;
typedef int FILE ;


 scalar_t__ ERROR_BUFFER_OVERFLOW ;
 scalar_t__ GetNetworkParams (TYPE_3__*,int*) ;
 scalar_t__ NO_ERROR ;
 int UB_NOERROR ;
 int UB_READFILE ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int free (TYPE_3__*) ;
 scalar_t__ isxdigit (unsigned char) ;
 scalar_t__ malloc (int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int ub_ctx_set_fwd (struct ub_ctx*,char*) ;

int
ub_ctx_resolvconf(struct ub_ctx* ctx, const char* fname)
{
 FILE* in;
 int numserv = 0;
 char buf[1024];
 char* parse, *addr;
 int r;

 if(fname == ((void*)0)) {

  fname = "/etc/resolv.conf";
 }
 in = fopen(fname, "r");
 if(!in) {

  return UB_READFILE;
 }
 while(fgets(buf, (int)sizeof(buf), in)) {
  buf[sizeof(buf)-1] = 0;
  parse=buf;
  while(*parse == ' ' || *parse == '\t')
   parse++;
  if(strncmp(parse, "nameserver", 10) == 0) {
   numserv++;
   parse += 10;

   while(*parse == ' ' || *parse == '\t')
    parse++;
   addr = parse;

   while(isxdigit((unsigned char)*parse) || *parse=='.' || *parse==':')
    parse++;

   *parse = 0;

   if((r = ub_ctx_set_fwd(ctx, addr)) != UB_NOERROR) {
    fclose(in);
    return r;
   }
  }
 }
 fclose(in);
 if(numserv == 0) {

  return ub_ctx_set_fwd(ctx, "127.0.0.1");
 }
 return UB_NOERROR;
}
