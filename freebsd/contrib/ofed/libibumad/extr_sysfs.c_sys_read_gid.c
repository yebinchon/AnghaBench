
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union umad_gid {int dummy; } umad_gid ;
typedef int buf ;
typedef int __be16 ;


 int EINVAL ;
 int htobe16 (int) ;
 char* strsep (char**,char*) ;
 int strtoul (char*,int *,int) ;
 int sys_read_string (char const*,char const*,char*,int) ;

int sys_read_gid(const char *dir_name, const char *file_name,
   union umad_gid *gid)
{
 char buf[64], *str, *s;
 __be16 *ugid = (__be16 *) gid;
 int r, i;

 if ((r = sys_read_string(dir_name, file_name, buf, sizeof(buf))) < 0)
  return r;

 for (s = buf, i = 0; i < 8; i++) {
  if (!(str = strsep(&s, ": \t\n")))
   return -EINVAL;
  ugid[i] = htobe16(strtoul(str, ((void*)0), 16) & 0xffff);
 }

 return 0;
}
