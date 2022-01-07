
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * hx509_peer_info ;
typedef int hx509_context ;


 int ENOMEM ;
 int * calloc (int,int) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
hx509_peer_info_alloc(hx509_context context, hx509_peer_info *peer)
{
    *peer = calloc(1, sizeof(**peer));
    if (*peer == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM, "out of memory");
 return ENOMEM;
    }
    return 0;
}
