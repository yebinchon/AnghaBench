
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
struct ccp_queue {int private_lsb; } ;


 int LSB_REGION_LENGTH ;

__attribute__((used)) static inline uint8_t
ccp_queue_lsb_entry(struct ccp_queue *qp, unsigned lsb_entry)
{
 return ((qp->private_lsb * LSB_REGION_LENGTH + lsb_entry));
}
