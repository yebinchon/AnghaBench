
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_error_t ;
struct op_copy_baton {int work_items; int dst_relpath; int * dst_wcroot; int src_relpath; int src_wcroot; int dst_op_root_relpath; scalar_t__ is_move; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int *,int *) ;
 int db_op_copy (int ,int ,int *,int ,int ,int,int *) ;
 int relpath_depth (int ) ;

__attribute__((used)) static svn_error_t *
op_copy_txn(svn_wc__db_wcroot_t *wcroot,
            struct op_copy_baton *ocb,
            apr_pool_t *scratch_pool)
{
  int move_op_depth;

  if (wcroot != ocb->dst_wcroot)
    {



      SVN_WC__DB_WITH_TXN(op_copy_txn(ocb->dst_wcroot, ocb, scratch_pool),
                          ocb->dst_wcroot);

      return SVN_NO_ERROR;
    }



  if (ocb->is_move)
    move_op_depth = relpath_depth(ocb->dst_op_root_relpath);
  else
    move_op_depth = 0;

  SVN_ERR(db_op_copy(ocb->src_wcroot, ocb->src_relpath,
                     ocb->dst_wcroot, ocb->dst_relpath,
                     ocb->work_items, move_op_depth, scratch_pool));

  return SVN_NO_ERROR;
}
