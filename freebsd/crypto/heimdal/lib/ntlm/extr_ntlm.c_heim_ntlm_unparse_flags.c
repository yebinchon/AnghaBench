
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ntlm_flag_units ;
 size_t unparse_flags (int ,int ,char*,size_t) ;

size_t
heim_ntlm_unparse_flags(uint32_t flags, char *s, size_t len)
{
    return unparse_flags(flags, ntlm_flag_units, s, len);
}
