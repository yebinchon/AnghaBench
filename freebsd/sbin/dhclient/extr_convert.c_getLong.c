
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int ibuf ;


 int memcpy (int *,unsigned char*,int) ;
 int ntohl (int ) ;

int32_t
getLong(unsigned char *(buf))
{
 int32_t ibuf;

 memcpy(&ibuf, buf, sizeof(ibuf));
 return (ntohl(ibuf));
}
