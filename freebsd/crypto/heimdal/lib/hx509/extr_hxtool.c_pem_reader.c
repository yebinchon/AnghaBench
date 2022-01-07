
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pem_data {int detached_data; TYPE_1__* os; } ;
typedef int hx509_pem_header ;
typedef int hx509_context ;
struct TYPE_2__ {size_t length; int * data; } ;


 int ENOMEM ;
 char* hx509_pem_find_header (int const*,char*) ;
 int * malloc (size_t) ;
 int memcpy (int *,void const*,size_t) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static int
pem_reader(hx509_context contextp, const char *type,
    const hx509_pem_header *headers,
    const void *data , size_t length, void *ctx)
{
    struct pem_data *p = (struct pem_data *)ctx;
    const char *h;

    p->os->data = malloc(length);
    if (p->os->data == ((void*)0))
 return ENOMEM;
    memcpy(p->os->data, data, length);
    p->os->length = length;

    h = hx509_pem_find_header(headers, "Content-disposition");
    if (h && strcasecmp(h, "detached") == 0)
 p->detached_data = 1;

    return 0;
}
