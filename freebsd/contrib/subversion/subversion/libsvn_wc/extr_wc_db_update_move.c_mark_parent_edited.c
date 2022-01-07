
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int skip; TYPE_3__* pb; } ;
typedef TYPE_1__ node_move_baton_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {scalar_t__ skip; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int mark_node_edited (TYPE_3__*,int *) ;

__attribute__((used)) static svn_error_t *
mark_parent_edited(node_move_baton_t *nmb,
                 apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT(nmb && nmb->pb);

  SVN_ERR(mark_node_edited(nmb->pb, scratch_pool));

  if (nmb->pb->skip)
    nmb->skip = TRUE;

  return SVN_NO_ERROR;
}
