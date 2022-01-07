
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use_count; } ;
typedef TYPE_1__ VCHIQ_SLOT_INFO_T ;



__attribute__((used)) static inline void
claim_slot(VCHIQ_SLOT_INFO_T *slot)
{
 slot->use_count++;
}
