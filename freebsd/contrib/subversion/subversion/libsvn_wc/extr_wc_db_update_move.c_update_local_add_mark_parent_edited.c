
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int skip; TYPE_3__* pb; } ;
typedef TYPE_1__ added_node_baton_t ;
struct TYPE_5__ {scalar_t__ skip; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int update_local_add_mark_node_edited (TYPE_3__*,int *) ;

__attribute__((used)) static svn_error_t *
update_local_add_mark_parent_edited(added_node_baton_t *nb,
                                    apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT(nb && nb->pb);

  SVN_ERR(update_local_add_mark_node_edited(nb->pb, scratch_pool));

  if (nb->pb->skip)
    nb->skip = TRUE;

  return SVN_NO_ERROR;
}
