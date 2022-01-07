
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {void* edited; void* skip; struct TYPE_3__* pb; } ;
typedef TYPE_1__ added_node_baton_t ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;

__attribute__((used)) static svn_error_t *
update_local_add_mark_node_edited(added_node_baton_t *nb,
                                  apr_pool_t *scratch_pool)
{
  if (nb->edited)
    return SVN_NO_ERROR;

  if (nb->pb)
    {
      SVN_ERR(update_local_add_mark_node_edited(nb->pb, scratch_pool));

      if (nb->pb->skip)
        nb->skip = TRUE;
    }

  nb->edited = TRUE;

  return SVN_NO_ERROR;
}
