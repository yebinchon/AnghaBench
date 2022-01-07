
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread_map {int dummy; } ;
struct TYPE_3__ {int (* to_xfer_memory ) (int ,char*,int,int ,int *,TYPE_1__*) ;} ;
typedef int CORE_ADDR ;


 scalar_t__ THR_MAP (int ) ;
 TYPE_1__ base_ops ;
 int stub1 (int ,char*,int,int ,int *,TYPE_1__*) ;

__attribute__((used)) static int
read_map (CORE_ADDR mapp, struct thread_map *map)
{
  return base_ops.to_xfer_memory ((CORE_ADDR)THR_MAP (mapp), (char *)map,
      sizeof (*map), 0, ((void*)0), &base_ops);
}
