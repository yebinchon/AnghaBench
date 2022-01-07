
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int uint32_t ;
typedef int int32_t ;


 scalar_t__ memcmp (int const*,int const*,int) ;
 int uuid_is_nil (int const*,int *) ;
 int uuid_s_ok ;

int32_t
uuid_equal(const uuid_t *a, const uuid_t *b, uint32_t *status)
{

 if (status != ((void*)0))
  *status = uuid_s_ok;


 if (a == b)
  return (1);
 if (a == ((void*)0))
  return (uuid_is_nil(b, ((void*)0)));
 if (b == ((void*)0))
  return (uuid_is_nil(a, ((void*)0)));


 return ((memcmp(a, b, sizeof(uuid_t))) ? 0 : 1);
}
