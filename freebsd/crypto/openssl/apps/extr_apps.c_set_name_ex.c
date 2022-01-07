
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; unsigned long member_1; int member_2; } ;
typedef TYPE_1__ NAME_EX_TBL ;
 scalar_t__ set_multi_opts (unsigned long*,char const*,TYPE_1__ const*) ;

int set_name_ex(unsigned long *flags, const char *arg)
{
    static const NAME_EX_TBL ex_tbl[] = {
        {"esc_2253", 153, 0},
        {"esc_2254", 152, 0},
        {"esc_ctrl", 151, 0},
        {"esc_msb", 150, 0},
        {"use_quote", 149, 0},
        {"utf8", 146, 0},
        {"ignore_type", 148, 0},
        {"show_type", 147, 0},
        {"dump_all", 156, 0},
        {"dump_nostr", 154, 0},
        {"dump_der", 155, 0},
        {"compat", 145, 0xffffffffL},
        {"sep_comma_plus", 133, 131},
        {"sep_comma_plus_space", 132, 131},
        {"sep_semi_plus_space", 129, 131},
        {"sep_multiline", 130, 131},
        {"dn_rev", 144, 0},
        {"nofname", 139, 140},
        {"sname", 137, 140},
        {"lname", 141, 140},
        {"align", 142, 0},
        {"oid", 138, 140},
        {"space_eq", 128, 0},
        {"dump_unknown", 143, 0},
        {"RFC2253", 134, 0xffffffffL},
        {"oneline", 135, 0xffffffffL},
        {"multiline", 136, 0xffffffffL},
        {"ca_default", 136, 0xffffffffL},
        {((void*)0), 0, 0}
    };
    if (set_multi_opts(flags, arg, ex_tbl) == 0)
        return 0;
    if (*flags != 145
        && (*flags & 131) == 0)
        *flags |= 132;
    return 1;
}
