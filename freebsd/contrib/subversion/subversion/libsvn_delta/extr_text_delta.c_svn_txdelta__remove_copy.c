
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ action_code; scalar_t__ length; } ;
typedef TYPE_2__ svn_txdelta_op_t ;
struct TYPE_7__ {int num_ops; TYPE_1__* new_data; TYPE_2__* ops; } ;
typedef TYPE_3__ svn_txdelta__ops_baton_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_5__ {int len; } ;


 scalar_t__ svn_txdelta_new ;
 scalar_t__ svn_txdelta_target ;

apr_size_t
svn_txdelta__remove_copy(svn_txdelta__ops_baton_t *build_baton,
                         apr_size_t max_len)
{
  svn_txdelta_op_t *op;
  apr_size_t len = 0;


  while (build_baton->num_ops > 0)
    {
      op = &build_baton->ops[build_baton->num_ops-1];


      if (op->action_code == svn_txdelta_target)
        break;


      if (op->length + len > max_len)
        {


          if (op->action_code == svn_txdelta_new)
            {
               build_baton->new_data->len -= max_len - len;
               op->length -= max_len - len;
               len = max_len;
            }

          break;
        }


      if (op->action_code == svn_txdelta_new)
        build_baton->new_data->len -= op->length;

      len += op->length;
      --build_baton->num_ops;
    }

  return len;
}
