
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_private_key_ops ;
typedef TYPE_2__* hx509_private_key ;
struct TYPE_5__ {void* keydata; } ;
struct TYPE_6__ {int ref; TYPE_1__ private_key; int * ops; } ;


 int ENOMEM ;
 TYPE_2__* calloc (int,int) ;

int
hx509_private_key_init(hx509_private_key *key,
   hx509_private_key_ops *ops,
   void *keydata)
{
    *key = calloc(1, sizeof(**key));
    if (*key == ((void*)0))
 return ENOMEM;
    (*key)->ref = 1;
    (*key)->ops = ops;
    (*key)->private_key.keydata = keydata;
    return 0;
}
