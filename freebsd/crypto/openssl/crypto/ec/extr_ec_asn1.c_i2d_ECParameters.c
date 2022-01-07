
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int group; } ;
typedef TYPE_1__ EC_KEY ;


 int EC_F_I2D_ECPARAMETERS ;
 int ECerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int i2d_ECPKParameters (int ,unsigned char**) ;

int i2d_ECParameters(EC_KEY *a, unsigned char **out)
{
    if (a == ((void*)0)) {
        ECerr(EC_F_I2D_ECPARAMETERS, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    return i2d_ECPKParameters(a->group, out);
}
