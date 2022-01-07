
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int hx509_certs ;


 int ENOMEM ;
 unsigned long* malloc (int) ;

__attribute__((used)) static int
mem_iter_start(hx509_context context,
        hx509_certs certs,
        void *data,
        void **cursor)
{
    unsigned long *iter = malloc(sizeof(*iter));

    if (iter == ((void*)0))
 return ENOMEM;

    *iter = 0;
    *cursor = iter;

    return 0;
}
