
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int os_get_random (int *,size_t) ;

int radius_gen_session_id(u8 *id, size_t len)
{





 return os_get_random(id, len);
}
