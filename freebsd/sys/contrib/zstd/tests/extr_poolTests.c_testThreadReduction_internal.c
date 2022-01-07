
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int countdown; int mut; scalar_t__ max; scalar_t__ val; int cond; } ;
typedef TYPE_1__ poolTest_t ;
typedef int POOL_ctx ;


 int ASSERT_EQ (scalar_t__,int) ;
 int POOL_add (int *,int *,TYPE_1__*) ;
 scalar_t__ POOL_resize (int *,int) ;
 int ZSTD_pthread_cond_wait (int *,int *) ;
 int ZSTD_pthread_mutex_lock (int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;
 int waitLongFn ;

__attribute__((used)) static int testThreadReduction_internal(POOL_ctx* ctx, poolTest_t test)
{
    int const nbWaits = 16;

    test.countdown = nbWaits;
    test.val = 0;
    test.max = 0;

    { int i;
        for (i=0; i<nbWaits; i++)
            POOL_add(ctx, &waitLongFn, &test);
    }
    ZSTD_pthread_mutex_lock(&test.mut);
    while (test.countdown > 0)
        ZSTD_pthread_cond_wait(&test.cond, &test.mut);
    ASSERT_EQ(test.val, 0);
    ASSERT_EQ(test.max, 4);
    ZSTD_pthread_mutex_unlock(&test.mut);

    ASSERT_EQ( POOL_resize(ctx, 2 ) , 0 );
    test.countdown = nbWaits;
    test.val = 0;
    test.max = 0;
    { int i;
        for (i=0; i<nbWaits; i++)
            POOL_add(ctx, &waitLongFn, &test);
    }
    ZSTD_pthread_mutex_lock(&test.mut);
    while (test.countdown > 0)
        ZSTD_pthread_cond_wait(&test.cond, &test.mut);
    ASSERT_EQ(test.val, 0);
    ASSERT_EQ(test.max, 2);
    ZSTD_pthread_mutex_unlock(&test.mut);

    return 0;
}
