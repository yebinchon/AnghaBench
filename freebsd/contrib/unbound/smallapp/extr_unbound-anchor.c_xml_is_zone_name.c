
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int BIO ;


 long BIO_get_mem_data (int *,char**) ;
 int BIO_seek (int *,int ) ;
 int memmove (char*,char*,size_t) ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char*,char const*,int ) ;

__attribute__((used)) static int
xml_is_zone_name(BIO* zone, const char* name)
{
 char buf[1024];
 char* z = ((void*)0);
 long zlen;
 (void)BIO_seek(zone, 0);
 zlen = BIO_get_mem_data(zone, &z);
 if(!zlen || !z) return 0;

 if(zlen >= (long)sizeof(buf)) return 0;
 memmove(buf, z, (size_t)zlen);
 buf[zlen] = 0;

 return (strncasecmp(buf, name, strlen(name)) == 0);
}
