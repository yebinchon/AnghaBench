
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ method_data; } ;
typedef TYPE_1__ X509_LOOKUP ;
struct TYPE_6__ {int lock; int buffer; int dirs; } ;
typedef TYPE_2__ BY_DIR ;


 int BUF_MEM_free (int ) ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int OPENSSL_free (TYPE_2__*) ;
 int by_dir_entry_free ;
 int sk_BY_DIR_ENTRY_pop_free (int ,int ) ;

__attribute__((used)) static void free_dir(X509_LOOKUP *lu)
{
    BY_DIR *a = (BY_DIR *)lu->method_data;

    sk_BY_DIR_ENTRY_pop_free(a->dirs, by_dir_entry_free);
    BUF_MEM_free(a->buffer);
    CRYPTO_THREAD_lock_free(a->lock);
    OPENSSL_free(a);
}
