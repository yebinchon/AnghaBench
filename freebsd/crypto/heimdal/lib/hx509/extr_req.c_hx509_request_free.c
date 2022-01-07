
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* hx509_request ;
struct TYPE_5__ {int san; int eku; int key; scalar_t__ name; } ;


 int free (TYPE_1__*) ;
 int free_ExtKeyUsage (int *) ;
 int free_GeneralNames (int *) ;
 int free_SubjectPublicKeyInfo (int *) ;
 int hx509_name_free (scalar_t__*) ;
 int memset (TYPE_1__*,int ,int) ;

void
hx509_request_free(hx509_request *req)
{
    if ((*req)->name)
 hx509_name_free(&(*req)->name);
    free_SubjectPublicKeyInfo(&(*req)->key);
    free_ExtKeyUsage(&(*req)->eku);
    free_GeneralNames(&(*req)->san);
    memset(*req, 0, sizeof(**req));
    free(*req);
    *req = ((void*)0);
}
