
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kadm5_ret_t ;


 int KADM5_FAILURE ;
 int acl_units ;
 int parse_flags (char const*,int ,int ) ;

kadm5_ret_t
_kadm5_string_to_privs(const char *s, uint32_t* privs)
{
    int flags;
    flags = parse_flags(s, acl_units, 0);
    if(flags < 0)
 return KADM5_FAILURE;
    *privs = flags;
    return 0;
}
