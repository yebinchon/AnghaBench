
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int krb5_ccache ;


 char const* CACHENAME (int ) ;

__attribute__((used)) static const char *
kcmss_get_name(krb5_context context,
        krb5_ccache id)
{
    return CACHENAME(id);
}
