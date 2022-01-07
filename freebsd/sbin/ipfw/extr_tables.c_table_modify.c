
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xi ;
struct TYPE_4__ {int mflags; int limit; } ;
typedef TYPE_1__ ipfw_xtable_info ;
typedef int ipfw_obj_header ;


 int EX_OSERR ;
 int EX_USAGE ;
 int IPFW_TMFLAGS_LIMIT ;
 int NEED1 (char*) ;

 int err (int ,char*) ;
 int errx (int ,char*) ;
 int get_token (int ,char*,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int strtol (char*,int *,int) ;
 scalar_t__ table_do_modify (int *,TYPE_1__*) ;
 int tablenewcmds ;

__attribute__((used)) static void
table_modify(ipfw_obj_header *oh, int ac, char *av[])
{
 ipfw_xtable_info xi;
 int tcmd;

 memset(&xi, 0, sizeof(xi));

 while (ac > 0) {
  tcmd = get_token(tablenewcmds, *av, "option");
  ac--; av++;

  switch (tcmd) {
  case 128:
   NEED1("limit value required");
   xi.limit = strtol(*av, ((void*)0), 10);
   xi.mflags |= IPFW_TMFLAGS_LIMIT;
   ac--; av++;
   break;
  default:
   errx(EX_USAGE, "cmd is not supported for modification");
  }
 }

 if (table_do_modify(oh, &xi) != 0)
  err(EX_OSERR, "Table modification failed");
}
