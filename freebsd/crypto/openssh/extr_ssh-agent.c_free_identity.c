
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* comment; struct TYPE_4__* provider; int key; } ;
typedef TYPE_1__ Identity ;


 int free (TYPE_1__*) ;
 int sshkey_free (int ) ;

__attribute__((used)) static void
free_identity(Identity *id)
{
 sshkey_free(id->key);
 free(id->provider);
 free(id->comment);
 free(id);
}
