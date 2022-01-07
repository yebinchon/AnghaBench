
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* bytes ) (unsigned char*,int) ;} ;
typedef TYPE_1__ RAND_METHOD ;


 int RAND_F_RAND_BYTES ;
 int RAND_R_FUNC_NOT_IMPLEMENTED ;
 TYPE_1__* RAND_get_rand_method () ;
 int RANDerr (int ,int ) ;
 int stub1 (unsigned char*,int) ;

int RAND_bytes(unsigned char *buf, int num)
{
    const RAND_METHOD *meth = RAND_get_rand_method();

    if (meth->bytes != ((void*)0))
        return meth->bytes(buf, num);
    RANDerr(RAND_F_RAND_BYTES, RAND_R_FUNC_NOT_IMPLEMENTED);
    return -1;
}
