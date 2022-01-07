
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int tmp ;


 int htons (unsigned int) ;
 int memcpy (unsigned char*,int *,int) ;

void
putUShort(unsigned char *obuf, unsigned int val)
{
 u_int16_t tmp = htons(val);

 memcpy(obuf, &tmp, sizeof(tmp));
}
