
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int flags; int lock; struct TYPE_9__* loaded_filename; struct TYPE_9__* filename; int meth_data; TYPE_1__* meth; int references; } ;
struct TYPE_8__ {int (* finish ) (TYPE_2__*) ;int (* dso_unload ) (TYPE_2__*) ;} ;
typedef TYPE_2__ DSO ;


 scalar_t__ CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int DSO_FLAG_NO_UNLOAD_ON_FREE ;
 int DSO_F_DSO_FREE ;
 int DSO_R_FINISH_FAILED ;
 int DSO_R_UNLOAD_FAILED ;
 int DSOerr (int ,int ) ;
 int OPENSSL_free (TYPE_2__*) ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,TYPE_2__*) ;
 int sk_void_free (int ) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

int DSO_free(DSO *dso)
{
    int i;

    if (dso == ((void*)0))
        return 1;

    if (CRYPTO_DOWN_REF(&dso->references, &i, dso->lock) <= 0)
        return 0;

    REF_PRINT_COUNT("DSO", dso);
    if (i > 0)
        return 1;
    REF_ASSERT_ISNT(i < 0);

    if ((dso->flags & DSO_FLAG_NO_UNLOAD_ON_FREE) == 0) {
        if ((dso->meth->dso_unload != ((void*)0)) && !dso->meth->dso_unload(dso)) {
            DSOerr(DSO_F_DSO_FREE, DSO_R_UNLOAD_FAILED);
            return 0;
        }
    }

    if ((dso->meth->finish != ((void*)0)) && !dso->meth->finish(dso)) {
        DSOerr(DSO_F_DSO_FREE, DSO_R_FINISH_FAILED);
        return 0;
    }

    sk_void_free(dso->meth_data);
    OPENSSL_free(dso->filename);
    OPENSSL_free(dso->loaded_filename);
    CRYPTO_THREAD_lock_free(dso->lock);
    OPENSSL_free(dso);
    return 1;
}
