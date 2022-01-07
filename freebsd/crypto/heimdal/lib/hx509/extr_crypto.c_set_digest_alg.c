
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int heim_oid ;
struct TYPE_6__ {size_t length; struct TYPE_6__* data; } ;
struct TYPE_5__ {TYPE_3__* parameters; int algorithm; } ;
typedef TYPE_1__ DigestAlgorithmIdentifier ;


 int ENOMEM ;
 int der_copy_oid (int const*,int *) ;
 int free (TYPE_3__*) ;
 void* malloc (size_t) ;
 int memcpy (TYPE_3__*,void const*,size_t) ;

__attribute__((used)) static int
set_digest_alg(DigestAlgorithmIdentifier *id,
        const heim_oid *oid,
        const void *param, size_t length)
{
    int ret;
    if (param) {
 id->parameters = malloc(sizeof(*id->parameters));
 if (id->parameters == ((void*)0))
     return ENOMEM;
 id->parameters->data = malloc(length);
 if (id->parameters->data == ((void*)0)) {
     free(id->parameters);
     id->parameters = ((void*)0);
     return ENOMEM;
 }
 memcpy(id->parameters->data, param, length);
 id->parameters->length = length;
    } else
 id->parameters = ((void*)0);
    ret = der_copy_oid(oid, &id->algorithm);
    if (ret) {
 if (id->parameters) {
     free(id->parameters->data);
     free(id->parameters);
     id->parameters = ((void*)0);
 }
 return ret;
    }
    return 0;
}
