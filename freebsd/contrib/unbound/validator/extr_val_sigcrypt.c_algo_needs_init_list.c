
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct algo_needs {int* needs; size_t num; } ;


 int ALGO_NEEDS_MAX ;
 int dnskey_algo_id_is_supported (int) ;
 int log_assert (int) ;
 int memset (int*,int ,int) ;

void algo_needs_init_list(struct algo_needs* n, uint8_t* sigalg)
{
 uint8_t algo;
 size_t total = 0;

 memset(n->needs, 0, sizeof(uint8_t)*ALGO_NEEDS_MAX);
 while( (algo=*sigalg++) != 0) {
  log_assert(dnskey_algo_id_is_supported((int)algo));
  log_assert(n->needs[algo] == 0);
  n->needs[algo] = 1;
  total++;
 }
 n->num = total;
}
