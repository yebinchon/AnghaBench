
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tablename; } ;
typedef TYPE_1__ ipfw_xtable_info ;
typedef int ipfw_obj_header ;


 int EX_OSERR ;
 int err (int ,char*,int ) ;
 int free (int *) ;
 int table_do_get_list (TYPE_1__*,int **) ;
 int table_show_list (int *,int) ;

__attribute__((used)) static int
table_show_one(ipfw_xtable_info *i, void *arg)
{
 ipfw_obj_header *oh;
 int error;
 int is_all;

 is_all = arg == ((void*)0) ? 0 : 1;

 if ((error = table_do_get_list(i, &oh)) != 0) {
  err(EX_OSERR, "Error requesting table %s list", i->tablename);
  return (error);
 }

 table_show_list(oh, is_all);

 free(oh);
 return (0);
}
