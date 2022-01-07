
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int hx509_certs ;


 int assert (int ) ;

__attribute__((used)) static int
null_iter_end(hx509_context context,
       hx509_certs certs,
       void *data,
       void *cursor)
{
    assert(cursor == ((void*)0));
    return 0;
}
