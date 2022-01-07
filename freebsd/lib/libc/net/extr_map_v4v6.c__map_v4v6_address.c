
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NS_INADDRSZ ;
 int memmove (char*,char const*,int ) ;
 int memset (char*,int,int) ;

void
_map_v4v6_address(const char *src, char *dst)
{

 memmove(&dst[12], src, NS_INADDRSZ);

 memset(&dst[10], 0xff, 2);
 memset(&dst[0], 0, 10);
}
