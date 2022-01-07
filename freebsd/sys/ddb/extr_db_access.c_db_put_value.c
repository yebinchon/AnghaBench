
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;
typedef scalar_t__ db_addr_t ;


 int db_printf (char*,long long) ;
 scalar_t__ db_write_bytes (scalar_t__,int,char*) ;
 int kdb_reenter () ;

void
db_put_value(db_addr_t addr, int size, db_expr_t value)
{
 char data[sizeof(int)];
 int i;


 for (i = size - 1; i >= 0; i--)



 {
     data[i] = value & 0xFF;
     value >>= 8;
 }

 if (db_write_bytes(addr, size, data) != 0) {
  db_printf("*** error writing to address %llx ***\n",
      (long long)addr);
  kdb_reenter();
 }
}
