
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* pseudorand ) (unsigned char*,int) ;} ;
typedef TYPE_1__ RAND_METHOD ;


 TYPE_1__* RAND_get_rand_method () ;
 int stub1 (unsigned char*,int) ;

int RAND_pseudo_bytes(unsigned char *buf, int num)
{
    const RAND_METHOD *meth = RAND_get_rand_method();

    if (meth->pseudorand != ((void*)0))
        return meth->pseudorand(buf, num);
    return -1;
}
