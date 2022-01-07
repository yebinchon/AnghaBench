
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int int32_t ;


 int htonl (int ) ;
 int memcpy (unsigned char*,int *,int) ;

void
putLong(unsigned char *obuf, int32_t val)
{
 int32_t tmp = htonl(val);

 memcpy(obuf, &tmp, sizeof(tmp));
}
