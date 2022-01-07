
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct protoent {int p_proto; } ;
struct TYPE_2__ {void* s_addr; } ;
struct nat44_cfg_redir {TYPE_1__ raddr; TYPE_1__ paddr; TYPE_1__ laddr; int proto; int mode; } ;


 int EX_DATAERR ;
 void* INADDR_ANY ;
 int REDIR_PROTO ;
 int StrToAddr (char*,TYPE_1__*) ;
 int errx (int ,char*,char*) ;
 struct protoent* getprotobyname (char*) ;
 scalar_t__ isdigit (char) ;

__attribute__((used)) static int
setup_redir_proto(char *buf, int *ac, char ***av)
{
 struct nat44_cfg_redir *r;
 struct protoent *protoent;
 size_t space;

 r = (struct nat44_cfg_redir *)buf;
 r->mode = REDIR_PROTO;

 buf = &buf[sizeof(struct nat44_cfg_redir)];
 space = sizeof(struct nat44_cfg_redir);




 protoent = getprotobyname(**av);
 if (protoent == ((void*)0))
  errx(EX_DATAERR, "redirect_proto: unknown protocol %s", **av);
 else
  r->proto = protoent->p_proto;

 (*av)++; (*ac)--;




 StrToAddr(**av, &r->laddr);

 (*av)++; (*ac)--;




 if (*ac == 0) {
  r->paddr.s_addr = INADDR_ANY;
  r->raddr.s_addr = INADDR_ANY;
 } else {

  if (isdigit(***av)) {
   StrToAddr(**av, &r->paddr);
   (*av)++; (*ac)--;





   if (*ac != 0 && isdigit(***av)) {
    StrToAddr(**av, &r->raddr);
    (*av)++; (*ac)--;
   }
  }
 }

 return (space);
}
