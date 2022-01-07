
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* value; struct TYPE_3__* next; int header; } ;
typedef TYPE_1__ hx509_pem_header ;


 scalar_t__ strcmp (char const*,int ) ;

const char *
hx509_pem_find_header(const hx509_pem_header *h, const char *header)
{
    while(h) {
 if (strcmp(header, h->header) == 0)
     return h->value;
 h = h->next;
    }
    return ((void*)0);
}
