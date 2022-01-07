
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * next; void* data; int priority; } ;
typedef TYPE_1__ pitem ;


 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int SSL_F_PITEM_NEW ;
 int SSLerr (int ,int ) ;
 int memcpy (int ,unsigned char*,int) ;

pitem *pitem_new(unsigned char *prio64be, void *data)
{
    pitem *item = OPENSSL_malloc(sizeof(*item));

    if (item == ((void*)0)) {
        SSLerr(SSL_F_PITEM_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    memcpy(item->priority, prio64be, sizeof(item->priority));
    item->data = data;
    item->next = ((void*)0);
    return item;
}
