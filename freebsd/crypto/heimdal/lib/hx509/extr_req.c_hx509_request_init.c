
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * hx509_request ;
typedef int hx509_context ;


 int ENOMEM ;
 int * calloc (int,int) ;

int
hx509_request_init(hx509_context context, hx509_request *req)
{
    *req = calloc(1, sizeof(**req));
    if (*req == ((void*)0))
 return ENOMEM;

    return 0;
}
