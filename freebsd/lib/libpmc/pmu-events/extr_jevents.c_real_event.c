
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* event; scalar_t__ name; } ;


 TYPE_1__* fixed ;
 int strcasecmp (char const*,scalar_t__) ;

__attribute__((used)) static const char *real_event(const char *name, char *event)
{
 int i;

 if (!name)
  return ((void*)0);

 for (i = 0; fixed[i].name; i++)
  if (!strcasecmp(name, fixed[i].name))
   return fixed[i].event;
 return event;
}
