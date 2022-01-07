
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum partition_type { ____Placeholder_partition_type } partition_type ;
struct TYPE_3__ {int type; char const* desc; } ;


 size_t nitems (TYPE_1__*) ;
 TYPE_1__* ptypes ;

const char *
parttype2str(enum partition_type type)
{
 size_t i;

 for (i = 0; i < nitems(ptypes); i++)
  if (ptypes[i].type == type)
   return (ptypes[i].desc);
 return (ptypes[0].desc);
}
