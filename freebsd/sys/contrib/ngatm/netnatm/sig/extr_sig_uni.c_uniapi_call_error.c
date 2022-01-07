
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct call {size_t cstate; int uni; } ;
struct TYPE_2__ {int ext; } ;


 TYPE_1__* callstates ;
 int uniapi_uni_error (int ,int ,int ,int ) ;

void
uniapi_call_error(struct call *c, uint32_t reason, uint32_t cookie)
{
 uniapi_uni_error(c->uni, reason, cookie, callstates[c->cstate].ext);
}
