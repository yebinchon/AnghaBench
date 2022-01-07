
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* header; int * value; } ;
typedef TYPE_1__ hx509_pem_header ;


 int ENOMEM ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 void* strdup (char const*) ;

int
hx509_pem_add_header(hx509_pem_header **headers,
       const char *header, const char *value)
{
    hx509_pem_header *h;

    h = calloc(1, sizeof(*h));
    if (h == ((void*)0))
 return ENOMEM;
    h->header = strdup(header);
    if (h->header == ((void*)0)) {
 free(h);
 return ENOMEM;
    }
    h->value = strdup(value);
    if (h->value == ((void*)0)) {
 free(h->header);
 free(h);
 return ENOMEM;
    }

    h->next = *headers;
    *headers = h;

    return 0;
}
