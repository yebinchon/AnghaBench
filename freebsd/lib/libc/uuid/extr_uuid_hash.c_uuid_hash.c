
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int time_low; } ;
typedef TYPE_1__ uuid_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int uuid_s_ok ;

uint16_t
uuid_hash(const uuid_t *u, uint32_t *status)
{

 if (status)
  *status = uuid_s_ok;





 return ((u) ? u->time_low & 0xffff : 0);
}
