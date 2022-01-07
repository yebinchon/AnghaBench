
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkey_index; } ;
struct ib_user_mad {void* data; TYPE_1__ addr; } ;


 scalar_t__ new_user_mad_api ;

void *umad_get_mad(void *umad)
{
 return new_user_mad_api ? ((struct ib_user_mad *)umad)->data :
     (void *)&((struct ib_user_mad *)umad)->addr.pkey_index;
}
