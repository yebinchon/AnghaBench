
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum uni_callstate { ____Placeholder_uni_callstate } uni_callstate ;
typedef enum call_state { ____Placeholder_call_state } call_state ;
struct TYPE_2__ {int ext; } ;


 TYPE_1__* callstates ;

__attribute__((used)) static enum uni_callstate
map_callstate(enum call_state state)
{
 return (callstates[state].ext);
}
