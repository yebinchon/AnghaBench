
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int tmp ;


 int htonl (int ) ;
 int memcpy (unsigned char*,int *,int) ;

void
putULong(unsigned char *obuf, u_int32_t val)
{
 u_int32_t tmp = htonl(val);

 memcpy(obuf, &tmp, sizeof(tmp));
}
