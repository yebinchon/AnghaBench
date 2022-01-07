
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_char ;



__attribute__((used)) static unsigned long cdp_get_number(const u_char * p, int l)
{
    unsigned long res=0;
    while( l>0 )
    {
 res = (res<<8) + *p;
 p++; l--;
    }
    return res;
}
