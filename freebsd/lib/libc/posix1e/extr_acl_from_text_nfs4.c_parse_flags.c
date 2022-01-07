
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_flag_t ;
typedef int acl_entry_t ;


 int _nfs4_parse_flags (char*,int *) ;
 int acl_set_flagset_np (int ,int *) ;

__attribute__((used)) static int
parse_flags(char *str, acl_entry_t entry)
{
 int error;
 acl_flag_t flags;

 error = _nfs4_parse_flags(str, &flags);
 if (error)
  return (error);

 error = acl_set_flagset_np(entry, &flags);

 return (error);
}
