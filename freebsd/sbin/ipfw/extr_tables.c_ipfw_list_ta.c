
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* algoname; int refcnt; int type; } ;
typedef TYPE_1__ ipfw_ta_info ;
struct TYPE_6__ {int count; scalar_t__ objsize; } ;
typedef TYPE_2__ ipfw_obj_lheader ;
typedef scalar_t__ caddr_t ;


 int EX_OSERR ;
 int err (int ,char*) ;
 int free (TYPE_2__*) ;
 char* match_value (int ,int ) ;
 int printf (char*,char const*,...) ;
 int table_do_get_algolist (TYPE_2__**) ;
 int tabletypes ;

void
ipfw_list_ta(int ac, char *av[])
{
 ipfw_obj_lheader *olh;
 ipfw_ta_info *info;
 int error, i;
 const char *atype;

 error = table_do_get_algolist(&olh);
 if (error != 0)
  err(EX_OSERR, "Unable to request algorithm list");

 info = (ipfw_ta_info *)(olh + 1);
 for (i = 0; i < olh->count; i++) {
  if ((atype = match_value(tabletypes, info->type)) == ((void*)0))
   atype = "unknown";
  printf("--- %s ---\n", info->algoname);
  printf(" type: %s\n refcount: %u\n", atype, info->refcnt);

  info = (ipfw_ta_info *)((caddr_t)info + olh->objsize);
 }

 free(olh);
}
