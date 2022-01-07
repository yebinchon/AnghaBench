
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_2__ pitem ;
typedef int hm_fragment ;
struct TYPE_9__ {TYPE_1__* d1; } ;
struct TYPE_7__ {int sent_messages; } ;
typedef TYPE_3__ SSL ;


 int dtls1_hm_fragment_free (int *) ;
 int pitem_free (TYPE_2__*) ;
 TYPE_2__* pqueue_pop (int ) ;

void dtls1_clear_sent_buffer(SSL *s)
{
    pitem *item = ((void*)0);
    hm_fragment *frag = ((void*)0);

    while ((item = pqueue_pop(s->d1->sent_messages)) != ((void*)0)) {
        frag = (hm_fragment *)item->data;
        dtls1_hm_fragment_free(frag);
        pitem_free(item);
    }
}
