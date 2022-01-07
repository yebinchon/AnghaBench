
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_parse_list (char const*,char,int,int ,unsigned long*) ;
 int mask_cb ;

int ASN1_str2mask(const char *str, unsigned long *pmask)
{
    *pmask = 0;
    return CONF_parse_list(str, '|', 1, mask_cb, pmask);
}
