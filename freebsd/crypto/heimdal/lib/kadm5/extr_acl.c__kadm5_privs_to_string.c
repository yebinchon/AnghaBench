
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int kadm5_ret_t ;


 scalar_t__ acl_units ;
 int strlcpy (char*,char*,size_t) ;
 int unparse_flags (scalar_t__,scalar_t__,char*,size_t) ;

kadm5_ret_t
_kadm5_privs_to_string(uint32_t privs, char *string, size_t len)
{
    if(privs == 0)
 strlcpy(string, "none", len);
    else
 unparse_flags(privs, acl_units + 1, string, len);
    return 0;
}
