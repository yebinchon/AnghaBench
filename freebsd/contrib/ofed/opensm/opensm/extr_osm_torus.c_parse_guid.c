
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct torus {int dummy; } ;
typedef int guid_t ;


 int cl_hton64 (int ) ;
 char* strtok (int *,char const*) ;
 int strtoull (char*,int *,int ) ;

__attribute__((used)) static
bool parse_guid(struct torus *t, guid_t *guid, const char *parse_sep)
{
 char *val;
 bool success = 0;

 val = strtok(((void*)0), parse_sep);
 if (!val)
  goto out;
 *guid = strtoull(val, ((void*)0), 0);
 *guid = cl_hton64(*guid);

 success = 1;
out:
 return success;
}
