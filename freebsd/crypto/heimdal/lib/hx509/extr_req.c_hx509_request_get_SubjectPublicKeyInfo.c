
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_request ;
typedef int hx509_context ;
struct TYPE_3__ {int key; } ;
typedef int SubjectPublicKeyInfo ;


 int copy_SubjectPublicKeyInfo (int *,int *) ;

int
hx509_request_get_SubjectPublicKeyInfo(hx509_context context,
     hx509_request req,
     SubjectPublicKeyInfo *key)
{
    return copy_SubjectPublicKeyInfo(&req->key, key);
}
