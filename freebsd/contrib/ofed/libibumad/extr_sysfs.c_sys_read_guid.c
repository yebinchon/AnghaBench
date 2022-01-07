
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int buf ;
typedef int __be64 ;


 int EINVAL ;
 int htobe64 (int) ;
 char* strsep (char**,char*) ;
 int strtoul (char*,int *,int) ;
 int sys_read_string (char const*,char const*,char*,int) ;

int sys_read_guid(const char *dir_name, const char *file_name, __be64 *net_guid)
{
 char buf[32], *str, *s;
 uint64_t guid;
 int r, i;

 if ((r = sys_read_string(dir_name, file_name, buf, sizeof(buf))) < 0)
  return r;

 guid = 0;

 for (s = buf, i = 0; i < 4; i++) {
  if (!(str = strsep(&s, ": \t\n")))
   return -EINVAL;
  guid = (guid << 16) | (strtoul(str, ((void*)0), 16) & 0xffff);
 }

 *net_guid = htobe64(guid);

 return 0;
}
