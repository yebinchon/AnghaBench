
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ccp_queue {int dummy; } ;


 int LSB_ENTRY_SIZE ;
 int ccp_queue_lsb_entry (struct ccp_queue*,unsigned int) ;

__attribute__((used)) static inline uint32_t
ccp_queue_lsb_address(struct ccp_queue *qp, unsigned lsb_entry)
{
 return (ccp_queue_lsb_entry(qp, lsb_entry) * LSB_ENTRY_SIZE);
}
