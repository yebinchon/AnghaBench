
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;
typedef int db_addr_t ;


 int db_get_value (int,int,int) ;
 int db_next ;
 int db_prev ;

__attribute__((used)) static void
db_search(db_addr_t addr, int size, db_expr_t value, db_expr_t mask,
    unsigned int count)
{
 while (count-- != 0) {
  db_prev = addr;
  if ((db_get_value(addr, size, 0) & mask) == value)
   break;
  addr += size;
 }
 db_next = addr;
}
