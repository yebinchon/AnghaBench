
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ASN1_INDEFINITE ;

int
_heim_fix_dce(size_t reallen, size_t *len)
{
    if(reallen == ASN1_INDEFINITE)
 return 1;
    if(*len < reallen)
 return -1;
    *len = reallen;
    return 0;
}
