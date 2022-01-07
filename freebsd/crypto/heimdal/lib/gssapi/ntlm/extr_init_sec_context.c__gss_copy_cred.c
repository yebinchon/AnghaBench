
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* ntlm_cred ;
struct TYPE_8__ {int length; int * data; } ;
struct TYPE_9__ {TYPE_1__ key; struct TYPE_9__* username; struct TYPE_9__* domain; } ;


 int ENOMEM ;
 TYPE_2__* calloc (int,int) ;
 int free (TYPE_2__*) ;
 int * malloc (int ) ;
 int memcpy (int *,int *,int ) ;
 void* strdup (TYPE_2__*) ;

__attribute__((used)) static int
_gss_copy_cred(ntlm_cred from, ntlm_cred *to)
{
    *to = calloc(1, sizeof(**to));
    if (*to == ((void*)0))
 return ENOMEM;
    (*to)->username = strdup(from->username);
    if ((*to)->username == ((void*)0)) {
 free(*to);
 return ENOMEM;
    }
    (*to)->domain = strdup(from->domain);
    if ((*to)->domain == ((void*)0)) {
 free((*to)->username);
 free(*to);
 return ENOMEM;
    }
    (*to)->key.data = malloc(from->key.length);
    if ((*to)->key.data == ((void*)0)) {
 free((*to)->domain);
 free((*to)->username);
 free(*to);
 return ENOMEM;
    }
    memcpy((*to)->key.data, from->key.data, from->key.length);
    (*to)->key.length = from->key.length;

    return 0;
}
