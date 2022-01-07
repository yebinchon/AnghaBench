
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_perm_t ;


 int a_access_masks ;
 int parse_flags_compact (char const*,int*,int ,char*) ;
 int parse_flags_verbose (char const*,int*,int ,char*,int*) ;

int
_nfs4_parse_access_mask(const char *str, acl_perm_t *perms)
{
 int error, try_compact;
 int tmpperms;

 error = parse_flags_verbose(str, &tmpperms, a_access_masks,
     "access permissions", &try_compact);
 if (error && try_compact)
  error = parse_flags_compact(str, &tmpperms,
      a_access_masks, "access permissions");

 *perms = tmpperms;

 return (error);
}
