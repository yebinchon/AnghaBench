
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_flag_t ;


 int a_flags ;
 int parse_flags_compact (char const*,int*,int ,char*) ;
 int parse_flags_verbose (char const*,int*,int ,char*,int*) ;

int
_nfs4_parse_flags(const char *str, acl_flag_t *flags)
{
 int error, try_compact;
 int tmpflags;

 error = parse_flags_verbose(str, &tmpflags, a_flags, "flags", &try_compact);
 if (error && try_compact)
  error = parse_flags_compact(str, &tmpflags, a_flags, "flags");

 *flags = tmpflags;

 return (error);
}
