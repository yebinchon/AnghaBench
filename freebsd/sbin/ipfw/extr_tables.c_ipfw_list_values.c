
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_long ;
struct _table_value {int spare1; scalar_t__ refcnt; } ;
typedef int ipfw_table_value ;
struct TYPE_4__ {int count; scalar_t__ objsize; } ;
typedef TYPE_1__ ipfw_obj_lheader ;
typedef scalar_t__ caddr_t ;
typedef int buf ;


 int EX_OSERR ;
 int compare_values ;
 int err (int ,char*) ;
 int free (TYPE_1__*) ;
 int printf (char*,...) ;
 int qsort (struct _table_value*,int,scalar_t__,int ) ;
 int table_do_get_vlist (TYPE_1__**) ;
 int table_print_valheader (char*,int,int) ;
 int table_show_value (char*,int,int *,int,int ) ;

void
ipfw_list_values(int ac, char *av[])
{
 ipfw_obj_lheader *olh;
 struct _table_value *v;
 int error, i;
 uint32_t vmask;
 char buf[128];

 error = table_do_get_vlist(&olh);
 if (error != 0)
  err(EX_OSERR, "Unable to request value list");

 vmask = 0x7FFFFFFF;

 table_print_valheader(buf, sizeof(buf), vmask);
 printf("HEADER: %s\n", buf);
 v = (struct _table_value *)(olh + 1);
 qsort(v, olh->count, olh->objsize, compare_values);
 for (i = 0; i < olh->count; i++) {
  table_show_value(buf, sizeof(buf), (ipfw_table_value *)v,
      vmask, 0);
  printf("[%u] refs=%lu %s\n", v->spare1, (u_long)v->refcnt, buf);
  v = (struct _table_value *)((caddr_t)v + olh->objsize);
 }

 free(olh);
}
