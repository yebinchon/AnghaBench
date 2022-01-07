
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ val; } ;
typedef TYPE_1__ abruptEndCanary_t ;
typedef int POOL_ctx ;


 int ASSERT_EQ (scalar_t__,int const) ;
 int ASSERT_TRUE (int * const) ;
 int POOL_add (int * const,int *,TYPE_1__*) ;
 int * POOL_create (int,int const) ;
 int POOL_free (int * const) ;
 scalar_t__ POOL_resize (int * const,int) ;
 int waitIncFn ;

__attribute__((used)) static int testAbruptEnding_internal(abruptEndCanary_t test)
{
    int const nbWaits = 16;

    POOL_ctx* const ctx = POOL_create(3 , nbWaits );
    ASSERT_TRUE(ctx);
    test.val = 0;

    { int i;
        for (i=0; i<nbWaits; i++)
            POOL_add(ctx, &waitIncFn, &test);
    }
    ASSERT_EQ( POOL_resize(ctx, 1 ) , 0 );

    POOL_free(ctx);
    ASSERT_EQ(test.val, nbWaits);
    return 0;
}
