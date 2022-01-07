
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num_attributes; int next_object; TYPE_2__* attributes; } ;
struct session_state {TYPE_1__ find; } ;
struct TYPE_4__ {struct TYPE_4__* pValue; } ;
typedef size_t CK_ULONG ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void
find_object_final(struct session_state *state)
{
    if (state->find.attributes) {
 CK_ULONG i;

 for (i = 0; i < state->find.num_attributes; i++) {
     if (state->find.attributes[i].pValue)
  free(state->find.attributes[i].pValue);
 }
 free(state->find.attributes);
 state->find.attributes = ((void*)0);
 state->find.num_attributes = 0;
 state->find.next_object = -1;
    }
}
