
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sbuf {int dummy; } ;


 int sbuf_printf (struct sbuf*,char*,int) ;

void
scsi_cdb_sbuf(u_int8_t *cdb_ptr, struct sbuf *sb)
{
 u_int8_t cdb_len;
 int i;

 if (cdb_ptr == ((void*)0))
  return;
 switch((*cdb_ptr >> 5) & 0x7) {
  case 0:
   cdb_len = 6;
   break;
  case 1:
  case 2:
   cdb_len = 10;
   break;
  case 3:
  case 6:
  case 7:

   cdb_len = 1;
   break;
  case 4:
   cdb_len = 16;
   break;
  case 5:
   cdb_len = 12;
   break;
 }

 for (i = 0; i < cdb_len; i++)
  sbuf_printf(sb, "%02hhx ", cdb_ptr[i]);

 return;
}
