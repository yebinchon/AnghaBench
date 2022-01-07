
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * cache_name; TYPE_6__* ccache; } ;
typedef TYPE_3__ krb5_acc ;
typedef TYPE_4__* cc_string_t ;
typedef scalar_t__ cc_int32 ;
struct TYPE_13__ {TYPE_1__* func; } ;
struct TYPE_12__ {TYPE_2__* func; int data; } ;
struct TYPE_10__ {int (* release ) (TYPE_4__*) ;} ;
struct TYPE_9__ {scalar_t__ (* get_name ) (TYPE_6__*,TYPE_4__**) ;} ;


 scalar_t__ ccErrNoMem ;
 scalar_t__ ccNoError ;
 int * strdup (int ) ;
 scalar_t__ stub1 (TYPE_6__*,TYPE_4__**) ;
 int stub2 (TYPE_4__*) ;

__attribute__((used)) static cc_int32
get_cc_name(krb5_acc *a)
{
    cc_string_t name;
    cc_int32 error;

    error = (*a->ccache->func->get_name)(a->ccache, &name);
    if (error)
 return error;

    a->cache_name = strdup(name->data);
    (*name->func->release)(name);
    if (a->cache_name == ((void*)0))
 return ccErrNoMem;
    return ccNoError;
}
