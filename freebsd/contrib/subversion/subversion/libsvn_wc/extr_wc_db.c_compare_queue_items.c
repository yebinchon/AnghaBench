
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int local_relpath; } ;
typedef TYPE_1__ commit_queue_item_t ;


 int svn_path_compare_paths (int ,int ) ;

__attribute__((used)) static int
compare_queue_items(const void *v1,
                    const void *v2)
{
  const commit_queue_item_t *cqi1
              = *(const commit_queue_item_t **)v1;
  const commit_queue_item_t *cqi2
              = *(const commit_queue_item_t **)v2;

  return svn_path_compare_paths(cqi1->local_relpath, cqi2->local_relpath);
}
