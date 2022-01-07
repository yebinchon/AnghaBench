
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xi ;
typedef int key ;
typedef int ipfw_xtable_info ;
typedef int ipfw_obj_tentry ;
struct TYPE_5__ {char* name; } ;
struct TYPE_6__ {TYPE_1__ ntlv; } ;
typedef TYPE_2__ ipfw_obj_header ;





 int EX_OSERR ;
 int EX_UNAVAILABLE ;
 int EX_USAGE ;
 int err (int ,char*) ;
 int errx (int ,char*,...) ;
 int memset (int *,int ,int) ;
 int strlcpy (char*,char*,int) ;
 int table_do_lookup (TYPE_2__*,char*,int *,int *) ;
 int table_show_entry (int *,int *) ;

__attribute__((used)) static void
table_lookup(ipfw_obj_header *oh, int ac, char *av[])
{
 ipfw_obj_tentry xtent;
 ipfw_xtable_info xi;
 char key[64];
 int error;

 if (ac == 0)
  errx(EX_USAGE, "address required");

 strlcpy(key, *av, sizeof(key));

 memset(&xi, 0, sizeof(xi));
 error = table_do_lookup(oh, key, &xi, &xtent);

 switch (error) {
 case 0:
  break;
 case 128:
  errx(EX_UNAVAILABLE, "Table %s not found", oh->ntlv.name);
 case 130:
  errx(EX_UNAVAILABLE, "Entry %s not found", *av);
 case 129:
  errx(EX_UNAVAILABLE, "Table %s algo does not support "
      "\"lookup\" method", oh->ntlv.name);
 default:
  err(EX_OSERR, "getsockopt(IP_FW_TABLE_XFIND)");
 }

 table_show_entry(&xi, &xtent);
}
