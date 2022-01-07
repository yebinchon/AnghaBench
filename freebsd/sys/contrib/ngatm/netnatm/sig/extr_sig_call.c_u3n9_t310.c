
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct call {TYPE_1__* uni; scalar_t__ mine; int cref; } ;
struct TYPE_2__ {int cause; } ;


 int MK_IE_CAUSE (int ,int ,int ) ;
 int UNI_CAUSE_LOC_USER ;
 int UNI_CAUSE_NO_RESPONSE ;
 int UNI_FAC_TIMEOUT ;
 int VERBOSE (TYPE_1__*,int ,int,char*,int ,char*) ;
 int clear_callD (struct call*) ;

__attribute__((used)) static void
u3n9_t310(struct call *c)
{
 VERBOSE(c->uni, UNI_FAC_TIMEOUT, 1, "call %u/%s T310 tick",
     c->cref, c->mine ? "mine" : "his");

 MK_IE_CAUSE(c->uni->cause, UNI_CAUSE_LOC_USER, UNI_CAUSE_NO_RESPONSE);
 clear_callD(c);
}
