
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ib_slvl_table_t ;


 int ib_slvl_get_i (int *,int,int*) ;
 int snprintf (char*,int,char*,...) ;

void mad_dump_sltovl(char *buf, int bufsz, void *val, int valsz)
{
 ib_slvl_table_t *p_slvl_tbl = val;
 uint8_t vl;
 int i, n = 0;
 n = snprintf(buf, bufsz, "|");
 for (i = 0; i < 16; i++) {
  ib_slvl_get_i(p_slvl_tbl, i, &vl);
  n += snprintf(buf + n, bufsz - n, "%2u|", vl);
  if (n >= bufsz)
   break;
 }
 snprintf(buf + n, bufsz - n, "\n");
}
