
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int txg_list_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int TXG_SIZE ;
 int txg_list_empty (int *,int) ;

boolean_t
txg_all_lists_empty(txg_list_t *tl)
{
 for (int i = 0; i < TXG_SIZE; i++) {
  if (!txg_list_empty(tl, i)) {
   return (B_FALSE);
  }
 }
 return (B_TRUE);
}
