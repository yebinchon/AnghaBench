
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nat44_cfg_redir {int dummy; } ;
struct nat44_cfg_nat {int redir_cnt; int mode; int ip; int name; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_6__ {int name; TYPE_1__ head; } ;
struct TYPE_7__ {int opheader; TYPE_2__ ntlv; } ;
typedef TYPE_3__ ipfw_obj_header ;
struct TYPE_8__ {int do_quiet; } ;


 int EX_DATAERR ;
 int EX_OSERR ;
 int IP_FW_NAT44_XCONFIG ;
 int PKT_ALIAS_DENY_INCOMING ;
 int PKT_ALIAS_LOG ;
 int PKT_ALIAS_PROXY_ONLY ;
 int PKT_ALIAS_RESET_ON_ADDR_CHANGE ;
 int PKT_ALIAS_REVERSE ;
 int PKT_ALIAS_SAME_PORTS ;
 int PKT_ALIAS_SKIP_GLOBAL ;
 int PKT_ALIAS_UNREGISTERED_ONLY ;
 TYPE_4__ co ;
 int do_set3 (int ,int *,size_t) ;
 int err (int,char*,char*) ;
 int errx (int ,char*,...) ;
 size_t estimate_redir_addr (int*,char***) ;
 size_t estimate_redir_port (int*,char***) ;
 int inet_aton (char*,int *) ;
 int ipfw_show_nat (int,char**) ;
 int isdigit (char) ;
 char* malloc (size_t) ;
 int match_token (int ,char*) ;
 int memset (char*,int ,size_t) ;
 int nat_params ;
 int set_addr_dynamic (char*,struct nat44_cfg_nat*) ;
 int setup_redir_addr (char*,int*,char***) ;
 int setup_redir_port (char*,int*,char***) ;
 int setup_redir_proto (char*,int*,char***) ;
 int snprintf (int ,int,char*,int) ;
 scalar_t__ strtol (char*,char**,int ) ;

void
ipfw_config_nat(int ac, char **av)
{
 ipfw_obj_header *oh;
 struct nat44_cfg_nat *n;
 int i, off, tok, ac1;
 char *id, *buf, **av1, *end;
 size_t len;

 av++;
 ac--;

 if (ac == 0)
  errx(EX_DATAERR, "missing nat id");
 id = *av;
 i = (int)strtol(id, &end, 0);
 if (i <= 0 || *end != '\0')
  errx(EX_DATAERR, "illegal nat id: %s", id);
 av++;
 ac--;
 if (ac == 0)
  errx(EX_DATAERR, "missing option");

 len = sizeof(*oh) + sizeof(*n);
 ac1 = ac;
 av1 = av;
 while (ac1 > 0) {
  tok = match_token(nat_params, *av1);
  ac1--;
  av1++;
  switch (tok) {
  case 136:
  case 137:
   ac1--;
   av1++;
   break;
  case 139:
  case 138:
  case 130:
  case 129:
  case 128:
  case 131:
  case 140:
  case 135:
   break;
  case 134:
   if (ac1 < 2)
    errx(EX_DATAERR, "redirect_addr: "
        "not enough arguments");
   len += estimate_redir_addr(&ac1, &av1);
   av1 += 2;
   ac1 -= 2;
   break;
  case 133:
   if (ac1 < 3)
    errx(EX_DATAERR, "redirect_port: "
        "not enough arguments");
   av1++;
   ac1--;
   len += estimate_redir_port(&ac1, &av1);
   av1 += 2;
   ac1 -= 2;

   if (ac1 != 0 && isdigit(**av1)) {
    av1++;
    ac1--;
   }
   break;
  case 132:
   if (ac1 < 2)
    errx(EX_DATAERR, "redirect_proto: "
        "not enough arguments");
   len += sizeof(struct nat44_cfg_redir);
   av1 += 2;
   ac1 -= 2;

   if (ac1 != 0 && isdigit(**av1)) {
    av1++;
    ac1--;
   }
   if (ac1 != 0 && isdigit(**av1)) {
    av1++;
    ac1--;
   }
   break;
  default:
   errx(EX_DATAERR, "unrecognised option ``%s''", av1[-1]);
  }
 }

 if ((buf = malloc(len)) == ((void*)0))
  errx(EX_OSERR, "malloc failed");


 off = sizeof(*oh) + sizeof(*n);
 memset(buf, 0, len);
 oh = (ipfw_obj_header *)buf;
 n = (struct nat44_cfg_nat *)(oh + 1);
 oh->ntlv.head.length = sizeof(oh->ntlv);
 snprintf(oh->ntlv.name, sizeof(oh->ntlv.name), "%d", i);
 snprintf(n->name, sizeof(n->name), "%d", i);

 while (ac > 0) {
  tok = match_token(nat_params, *av);
  ac--;
  av++;
  switch (tok) {
  case 136:
   if (ac == 0)
    errx(EX_DATAERR, "missing option");
   if (!inet_aton(av[0], &(n->ip)))
    errx(EX_DATAERR, "bad ip address ``%s''",
        av[0]);
   ac--;
   av++;
   break;
  case 137:
   if (ac == 0)
    errx(EX_DATAERR, "missing option");
   set_addr_dynamic(av[0], n);
   ac--;
   av++;
   break;
  case 139:
   n->mode |= PKT_ALIAS_LOG;
   break;
  case 138:
   n->mode |= PKT_ALIAS_DENY_INCOMING;
   break;
  case 130:
   n->mode |= PKT_ALIAS_SAME_PORTS;
   break;
  case 128:
   n->mode |= PKT_ALIAS_UNREGISTERED_ONLY;
   break;
  case 129:
   n->mode |= PKT_ALIAS_SKIP_GLOBAL;
   break;
  case 131:
   n->mode |= PKT_ALIAS_RESET_ON_ADDR_CHANGE;
   break;
  case 140:
   n->mode |= PKT_ALIAS_REVERSE;
   break;
  case 135:
   n->mode |= PKT_ALIAS_PROXY_ONLY;
   break;




  case 134:
  case 133:
  case 132:
   switch (tok) {
   case 134:
    i = setup_redir_addr(&buf[off], &ac, &av);
    break;
   case 133:
    i = setup_redir_port(&buf[off], &ac, &av);
    break;
   case 132:
    i = setup_redir_proto(&buf[off], &ac, &av);
    break;
   }
   n->redir_cnt++;
   off += i;
   break;
  }
 }

 i = do_set3(IP_FW_NAT44_XCONFIG, &oh->opheader, len);
 if (i != 0)
  err(1, "setsockopt(%s)", "IP_FW_NAT44_XCONFIG");

 if (!co.do_quiet) {

  int _ac = 3;
  const char *_av[] = {"show", "config", id};
  ipfw_show_nat(_ac, (char **)(void *)_av);
 }
}
