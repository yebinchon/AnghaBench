
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_wq {int * db_offp; } ;


 int c4iw_abi_version ;

__attribute__((used)) static inline int t4_wq_db_enabled(struct t4_wq *wq)
{






 if ( c4iw_abi_version >= 2 )
  return ! *wq->db_offp;
 else
  return 1;
}
