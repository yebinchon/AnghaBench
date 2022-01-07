
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int ibuf ;


 int memcpy (int *,unsigned char*,int) ;
 int ntohs (int ) ;

u_int16_t
getUShort(unsigned char *buf)
{
 u_int16_t ibuf;

 memcpy(&ibuf, buf, sizeof(ibuf));
 return (ntohs(ibuf));
}
