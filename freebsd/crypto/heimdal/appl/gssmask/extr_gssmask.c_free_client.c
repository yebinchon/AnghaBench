
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct client {scalar_t__ logging; scalar_t__ sock; struct client* moniker; TYPE_1__* handles; } ;
struct TYPE_2__ {int idx; } ;


 int del_handle (TYPE_1__**,int ) ;
 int free (struct client*) ;
 int krb5_storage_free (scalar_t__) ;

__attribute__((used)) static void
free_client(struct client *c)
{
    while(c->handles)
 del_handle(&c->handles, c->handles->idx);

    free(c->moniker);
    krb5_storage_free(c->sock);
    if (c->logging)
 krb5_storage_free(c->logging);
    free(c);
}
