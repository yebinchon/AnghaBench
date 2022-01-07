
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int q; } ;
typedef TYPE_1__ record_pqueue ;
struct TYPE_8__ {int data; } ;
typedef TYPE_2__ pitem ;
typedef int SSL ;


 int OPENSSL_free (int ) ;
 int dtls1_copy_record (int *,TYPE_2__*) ;
 int pitem_free (TYPE_2__*) ;
 TYPE_2__* pqueue_pop (int ) ;

int dtls1_retrieve_buffered_record(SSL *s, record_pqueue *queue)
{
    pitem *item;

    item = pqueue_pop(queue->q);
    if (item) {
        dtls1_copy_record(s, item);

        OPENSSL_free(item->data);
        pitem_free(item);

        return 1;
    }

    return 0;
}
