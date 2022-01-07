
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct nat44_cfg_spool {int port; TYPE_1__ addr; } ;
struct nat44_cfg_redir {TYPE_1__ paddr; TYPE_1__ laddr; int spool_cnt; int mode; } ;


 int INADDR_NONE ;
 int REDIR_ADDR ;
 int StrToAddr (char*,TYPE_1__*) ;
 int * strchr (char*,char) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int
setup_redir_addr(char *buf, int *ac, char ***av)
{
 struct nat44_cfg_redir *r;
 char *sep;
 size_t space;

 r = (struct nat44_cfg_redir *)buf;
 r->mode = REDIR_ADDR;

 buf = &buf[sizeof(struct nat44_cfg_redir)];
 space = sizeof(struct nat44_cfg_redir);


 if (strchr(**av, ',') != ((void*)0)) {
  struct nat44_cfg_spool *spool;


  r->laddr.s_addr = INADDR_NONE;
  sep = strtok(**av, ",");
  while (sep != ((void*)0)) {
   spool = (struct nat44_cfg_spool *)buf;
   space += sizeof(struct nat44_cfg_spool);
   StrToAddr(sep, &spool->addr);
   spool->port = ~0;
   r->spool_cnt++;

   buf = &buf[sizeof(struct nat44_cfg_spool)];
   sep = strtok(((void*)0), ",");
  }
 } else
  StrToAddr(**av, &r->laddr);
 (*av)++; (*ac)--;


 StrToAddr(**av, &r->paddr);
 (*av)++; (*ac)--;

 return (space);
}
