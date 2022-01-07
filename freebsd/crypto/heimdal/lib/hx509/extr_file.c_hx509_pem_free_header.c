
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* value; struct TYPE_4__* header; struct TYPE_4__* next; } ;
typedef TYPE_1__ hx509_pem_header ;


 int free (TYPE_1__*) ;

void
hx509_pem_free_header(hx509_pem_header *headers)
{
    hx509_pem_header *h;
    while (headers) {
 h = headers;
 headers = headers->next;
 free(h->header);
 free(h->value);
 free(h);
    }
}
