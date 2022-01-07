
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_hal_eth_adapter {int dummy; } ;
typedef enum al_udma_type { ____Placeholder_al_udma_type } al_udma_type ;


 int EPERM ;

int al_eth_queue_enable(struct al_hal_eth_adapter *adapter __attribute__((__unused__)),
   enum al_udma_type type __attribute__((__unused__)),
   uint32_t qid __attribute__((__unused__)))
{
 return -EPERM;
}
