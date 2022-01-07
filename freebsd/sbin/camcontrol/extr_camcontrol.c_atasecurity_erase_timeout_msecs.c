
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;



__attribute__((used)) static u_int32_t
atasecurity_erase_timeout_msecs(u_int16_t timeout)
{

 if (timeout == 0)
  return 2 * 3600 * 1000;
 else if (timeout > 255)
  return (508 + 60) * 60 * 1000;

 return ((2 * timeout) + 5) * 60 * 1000;
}
