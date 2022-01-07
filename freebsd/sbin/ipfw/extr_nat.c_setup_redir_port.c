
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_3__ {void* s_addr; } ;
struct nat44_cfg_spool {void* port; TYPE_1__ addr; } ;
struct nat44_cfg_redir {scalar_t__ proto; int pport_cnt; int rport_cnt; int spool_cnt; void* pport; void* rport; TYPE_1__ raddr; void* lport; TYPE_1__ paddr; TYPE_1__ laddr; int mode; } ;
typedef int port_range ;


 int EX_DATAERR ;
 void* GETLOPORT (int ) ;
 int GETNUMPORTS (int ) ;
 void* INADDR_ANY ;
 void* INADDR_NONE ;
 scalar_t__ IPPROTO_SCTP ;
 int REDIR_PORT ;
 int SETLOPORT (int ,int ) ;
 int SETNUMPORTS (int ,int) ;
 int StrToAddr (char*,TYPE_1__*) ;
 scalar_t__ StrToAddrAndPortRange (char*,TYPE_1__*,char*,int *) ;
 scalar_t__ StrToPortRange (char*,char*,int *) ;
 scalar_t__ StrToProto (char*) ;
 int errx (int ,char*) ;
 scalar_t__ isdigit (char) ;
 int * strchr (char*,char) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int
setup_redir_port(char *buf, int *ac, char ***av)
{
 struct nat44_cfg_redir *r;
 char *sep, *protoName, *lsnat = ((void*)0);
 size_t space;
 u_short numLocalPorts;
 port_range portRange;

 numLocalPorts = 0;

 r = (struct nat44_cfg_redir *)buf;
 r->mode = REDIR_PORT;

 buf = &buf[sizeof(struct nat44_cfg_redir)];
 space = sizeof(struct nat44_cfg_redir);




 r->proto = StrToProto(**av);
 protoName = **av;
 (*av)++; (*ac)--;




 if (strchr(**av, ',') != ((void*)0)) {
  r->laddr.s_addr = INADDR_NONE;
  r->lport = ~0;
  numLocalPorts = 1;
  lsnat = **av;
 } else {





  if (r->proto == IPPROTO_SCTP) {
   if (strchr(**av, ':'))
    errx(EX_DATAERR, "redirect_port:"
        "port numbers do not change in sctp, so do "
        "not specify them as part of the target");
   else
    StrToAddr(**av, &r->laddr);
  } else {
   if (StrToAddrAndPortRange(**av, &r->laddr, protoName,
       &portRange) != 0)
    errx(EX_DATAERR, "redirect_port: "
        "invalid local port range");

   r->lport = GETLOPORT(portRange);
   numLocalPorts = GETNUMPORTS(portRange);
  }
 }
 (*av)++; (*ac)--;




 if (strchr(**av, ':') != ((void*)0)) {
  if (StrToAddrAndPortRange(**av, &r->paddr, protoName,
      &portRange) != 0)
   errx(EX_DATAERR, "redirect_port: "
       "invalid public port range");
 } else {
  r->paddr.s_addr = INADDR_ANY;
  if (StrToPortRange(**av, protoName, &portRange) != 0)
   errx(EX_DATAERR, "redirect_port: "
       "invalid public port range");
 }

 r->pport = GETLOPORT(portRange);
 if (r->proto == IPPROTO_SCTP) {
  numLocalPorts = GETNUMPORTS(portRange);
  r->lport = r->pport;
 }
 r->pport_cnt = GETNUMPORTS(portRange);
 (*av)++; (*ac)--;
 if (*ac != 0 && isdigit(***av)) {
  if (strchr(**av, ':') != ((void*)0)) {
   if (StrToAddrAndPortRange(**av, &r->raddr, protoName,
       &portRange) != 0)
    errx(EX_DATAERR, "redirect_port: "
        "invalid remote port range");
  } else {
   SETLOPORT(portRange, 0);
   SETNUMPORTS(portRange, 1);
   StrToAddr(**av, &r->raddr);
  }
  (*av)++; (*ac)--;
 } else {
  SETLOPORT(portRange, 0);
  SETNUMPORTS(portRange, 1);
  r->raddr.s_addr = INADDR_ANY;
 }
 r->rport = GETLOPORT(portRange);
 r->rport_cnt = GETNUMPORTS(portRange);




 if (numLocalPorts != r->pport_cnt)
  errx(EX_DATAERR, "redirect_port: "
      "port ranges must be equal in size");


 if (r->rport_cnt != numLocalPorts &&
     (r->rport_cnt != 1 || r->rport != 0))
  errx(EX_DATAERR, "redirect_port: remote port must"
      "be 0 or equal to local port range in size");


 if (lsnat != ((void*)0)) {
  struct nat44_cfg_spool *spool;

  sep = strtok(lsnat, ",");
  while (sep != ((void*)0)) {
   spool = (struct nat44_cfg_spool *)buf;
   space += sizeof(struct nat44_cfg_spool);





   if (r->proto == IPPROTO_SCTP) {
    if (strchr (sep, ':')) {
     errx(EX_DATAERR, "redirect_port:"
         "port numbers do not change in "
         "sctp, so do not specify them as "
         "part of the target");
    } else {
     StrToAddr(sep, &spool->addr);
     spool->port = r->pport;
    }
   } else {
    if (StrToAddrAndPortRange(sep, &spool->addr,
     protoName, &portRange) != 0)
     errx(EX_DATAERR, "redirect_port:"
         "invalid local port range");
    if (GETNUMPORTS(portRange) != 1)
     errx(EX_DATAERR, "redirect_port: "
         "local port must be single in "
         "this context");
    spool->port = GETLOPORT(portRange);
   }
   r->spool_cnt++;

   buf = &buf[sizeof(struct nat44_cfg_spool)];
   sep = strtok(((void*)0), ",");
  }
 }

 return (space);
}
