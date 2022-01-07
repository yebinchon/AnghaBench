
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkey_index; } ;
struct ib_user_mad {TYPE_1__ addr; } ;


 scalar_t__ new_user_mad_api ;

int umad_get_pkey(void *umad)
{
 struct ib_user_mad *mad = umad;

 if (new_user_mad_api)
  return mad->addr.pkey_index;

 return 0;
}
