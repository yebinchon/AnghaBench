
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int crldp; } ;
typedef TYPE_1__ X509 ;


 int NID_crl_distribution_points ;
 int X509_get_ext_d2i (TYPE_1__*,int ,int *,int *) ;
 int setup_dp (TYPE_1__*,int ) ;
 int sk_DIST_POINT_num (int ) ;
 int sk_DIST_POINT_value (int ,int) ;

__attribute__((used)) static void setup_crldp(X509 *x)
{
    int i;
    x->crldp = X509_get_ext_d2i(x, NID_crl_distribution_points, ((void*)0), ((void*)0));
    for (i = 0; i < sk_DIST_POINT_num(x->crldp); i++)
        setup_dp(x, sk_DIST_POINT_value(x->crldp, i));
}
