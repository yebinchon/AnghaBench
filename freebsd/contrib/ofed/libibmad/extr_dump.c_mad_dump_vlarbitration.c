
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_1__* vl_entry; } ;
typedef TYPE_2__ ib_vl_arb_table_t ;
struct TYPE_3__ {int weight; int res_vl; } ;


 int ib_vl_arb_get_vl (int ,int*) ;
 int snprintf (char*,int,char*,...) ;

void mad_dump_vlarbitration(char *buf, int bufsz, void *val, int num)
{
 ib_vl_arb_table_t *p_vla_tbl = val;
 int i, n;
 uint8_t vl;

 num /= sizeof(p_vla_tbl->vl_entry[0]);

 n = snprintf(buf, bufsz, "\nVL    : |");
 if (n >= bufsz)
  return;
 for (i = 0; i < num; i++) {
  ib_vl_arb_get_vl(p_vla_tbl->vl_entry[i].res_vl, &vl);
  n += snprintf(buf + n, bufsz - n, "0x%-2X|", vl);
  if (n >= bufsz)
   return;
 }

 n += snprintf(buf + n, bufsz - n, "\nWEIGHT: |");
 if (n >= bufsz)
  return;
 for (i = 0; i < num; i++) {
  n += snprintf(buf + n, bufsz - n, "0x%-2X|",
         p_vla_tbl->vl_entry[i].weight);
  if (n >= bufsz)
   return;
 }

 snprintf(buf + n, bufsz - n, "\n");
}
