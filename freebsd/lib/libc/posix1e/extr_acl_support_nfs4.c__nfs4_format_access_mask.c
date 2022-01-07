
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_perm_t ;


 int a_access_masks ;
 int format_flags_compact (char*,size_t,int ,int ) ;
 int format_flags_verbose (char*,size_t,int ,int ) ;

int
_nfs4_format_access_mask(char *str, size_t size, acl_perm_t var, int verbose)
{

 if (verbose)
  return (format_flags_verbose(str, size, var, a_access_masks));

 return (format_flags_compact(str, size, var, a_access_masks));
}
