
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_prefix_string__t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_boolean_t ;
struct TYPE_11__ {int to; } ;
typedef TYPE_2__ reference_t ;
struct TYPE_12__ {int predecessor_count; int rep_id; int * path; } ;
typedef TYPE_3__ path_order_t ;
struct TYPE_13__ {int references; TYPE_1__* fs; } ;
typedef TYPE_4__ pack_context_t ;
struct TYPE_14__ {int max_linear_deltification; } ;
typedef TYPE_5__ fs_fs_data_t ;
struct TYPE_10__ {TYPE_5__* fsap_data; } ;


 int assert (int) ;
 scalar_t__ compare_ref_to_item ;
 int roundness (int) ;
 scalar_t__ svn_fs_fs__id_part_eq (int *,int *) ;
 scalar_t__ svn_prefix_string__compare (int const*,int *) ;
 TYPE_2__** svn_sort__array_lookup (int ,int *,int *,int (*) (void const*,void const*)) ;

__attribute__((used)) static void
sort_reps_range(pack_context_t *context,
                path_order_t **path_order,
                path_order_t **temp,
                int first,
                int last)
{
  const svn_prefix_string__t *path;
  int i, dest;
  svn_fs_fs__id_part_t rep_id;
  fs_fs_data_t *ffd = context->fs->fsap_data;


  if (first == last)
    return;
  dest = first;
  for (i = first; i < last; ++i)
    {
      int round = roundness(path_order[i]->predecessor_count);
      svn_boolean_t likely_target
        = (round >= ffd->max_linear_deltification)
          && (round >= path_order[i]->predecessor_count / 4);





      svn_boolean_t likely_head
        = path_order[i]->predecessor_count
          < ffd->max_linear_deltification;


      if (likely_target || likely_head)
        {
          temp[dest++] = path_order[i];
          path_order[i] = ((void*)0);
        }
    }
  for (i = first; i < last; ++i)
    if (path_order[i])
      {

        path = path_order[i]->path;
        rep_id = path_order[i]->rep_id;
        break;
      }

  for (i = first; i < last; ++i)
    if (path_order[i])
      {

        if (svn_prefix_string__compare(path, path_order[i]->path))
          {
            path = path_order[i]->path;
            rep_id = path_order[i]->rep_id;
          }


        if (svn_fs_fs__id_part_eq(&path_order[i]->rep_id, &rep_id))
          {
            reference_t **reference;

            temp[dest++] = path_order[i];
            path_order[i] = ((void*)0);

            reference = svn_sort__array_lookup(context->references,
                                               &rep_id, ((void*)0),
              (int (*)(const void *, const void *))compare_ref_to_item);
            if (reference)
              rep_id = (*reference)->to;
          }
      }






  for (i = first; i < last; ++i)
    if (path_order[i])
      temp[dest++] = path_order[i];


  assert(dest == last);
}
