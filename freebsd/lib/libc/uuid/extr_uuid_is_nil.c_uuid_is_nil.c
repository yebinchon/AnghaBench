
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef scalar_t__ uint32_t ;
typedef int int32_t ;


 scalar_t__ uuid_s_ok ;

int32_t
uuid_is_nil(const uuid_t *u, uint32_t *status)
{
 const uint32_t *p;

 if (status)
  *status = uuid_s_ok;

 if (!u)
  return (1);





 p = (const uint32_t*)u;
 return ((p[0] == 0 && p[1] == 0 && p[2] == 0 && p[3] == 0) ? 1 : 0);
}
