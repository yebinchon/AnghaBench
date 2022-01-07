
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* evsel; } ;
struct TYPE_3__ {char const* name; } ;


 TYPE_2__* current_base ;

const char *
event_get_method(void)
{
 return (current_base->evsel->name);
}
