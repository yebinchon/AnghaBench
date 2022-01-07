
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int int16_t ;


 int htons (int) ;
 int memcpy (unsigned char*,int *,int) ;

void
putShort(unsigned char *obuf, int val)
{
 int16_t tmp = htons(val);

 memcpy(obuf, &tmp, sizeof(tmp));
}
