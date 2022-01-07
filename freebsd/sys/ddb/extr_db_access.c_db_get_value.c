
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int db_expr_t ;
typedef scalar_t__ db_addr_t ;


 int* db_extend ;
 int db_printf (char*,long long) ;
 scalar_t__ db_read_bytes (scalar_t__,int,char*) ;
 int kdb_reenter () ;

db_expr_t
db_get_value(db_addr_t addr, int size, bool is_signed)
{
 char data[sizeof(u_int64_t)];
 db_expr_t value;
 int i;

 if (db_read_bytes(addr, size, data) != 0) {
  db_printf("*** error reading from address %llx ***\n",
      (long long)addr);
  kdb_reenter();
 }

 value = 0;

 for (i = 0; i < size; i++)



 {
     value = (value << 8) + (data[i] & 0xFF);
 }

 if (size < 4) {
     if (is_signed && (value & db_extend[size]) != 0)
  value |= db_extend[size];
 }
 return (value);
}
