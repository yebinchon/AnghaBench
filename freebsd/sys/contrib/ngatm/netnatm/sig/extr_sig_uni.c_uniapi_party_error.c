
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct party {TYPE_1__* call; } ;
struct TYPE_4__ {int ext; } ;
struct TYPE_3__ {size_t cstate; int uni; } ;


 TYPE_2__* callstates ;
 int uniapi_uni_error (int ,int ,int ,int ) ;

void
uniapi_party_error(struct party *p, uint32_t reason, uint32_t cookie)
{
 uniapi_uni_error(p->call->uni, reason, cookie,
     callstates[p->call->cstate].ext);
}
