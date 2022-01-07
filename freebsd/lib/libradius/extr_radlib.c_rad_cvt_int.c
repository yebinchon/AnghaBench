
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int memcpy (int *,void const*,int) ;
 int ntohl (int ) ;

u_int32_t
rad_cvt_int(const void *data)
{
 u_int32_t value;

 memcpy(&value, data, sizeof value);
 return ntohl(value);
}
