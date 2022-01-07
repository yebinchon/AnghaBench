
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int action_code; scalar_t__ offset; scalar_t__ length; } ;
typedef TYPE_1__ svn_txdelta_op_t ;
struct TYPE_9__ {int num_ops; int ops_size; TYPE_4__* new_data; int src_ops; TYPE_1__* ops; } ;
typedef TYPE_2__ svn_txdelta__ops_baton_t ;
typedef enum svn_delta_action { ____Placeholder_svn_delta_action } svn_delta_action ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {scalar_t__ len; } ;


 TYPE_1__* apr_palloc (int *,int const) ;
 int assert (int) ;
 int memcpy (TYPE_1__*,TYPE_1__* const,int) ;
 int svn_stringbuf_appendbytes (TYPE_4__*,char const*,scalar_t__) ;




void
svn_txdelta__insert_op(svn_txdelta__ops_baton_t *build_baton,
                       enum svn_delta_action opcode,
                       apr_size_t offset,
                       apr_size_t length,
                       const char *new_data,
                       apr_pool_t *pool)
{
  svn_txdelta_op_t *op;




  if (build_baton->num_ops > 0)
    {
      op = &build_baton->ops[build_baton->num_ops - 1];
      if (op->action_code == opcode
          && (opcode == 130
              || op->offset + op->length == offset))
        {
          op->length += length;
          if (opcode == 130)
            svn_stringbuf_appendbytes(build_baton->new_data,
                                      new_data, length);
          return;
        }
    }


  if (build_baton->num_ops == build_baton->ops_size)
    {
      svn_txdelta_op_t *const old_ops = build_baton->ops;
      int const new_ops_size = (build_baton->ops_size == 0
                                ? 16 : 2 * build_baton->ops_size);
      build_baton->ops =
        apr_palloc(pool, new_ops_size * sizeof(*build_baton->ops));


      if (old_ops)
        memcpy(build_baton->ops, old_ops,
               build_baton->ops_size * sizeof(*build_baton->ops));
      build_baton->ops_size = new_ops_size;
    }




  op = &build_baton->ops[build_baton->num_ops];
  switch (opcode)
    {
    case 129:
      ++build_baton->src_ops;

    case 128:
      op->action_code = opcode;
      op->offset = offset;
      op->length = length;
      break;
    case 130:
      op->action_code = opcode;
      op->offset = build_baton->new_data->len;
      op->length = length;
      svn_stringbuf_appendbytes(build_baton->new_data, new_data, length);
      break;
    default:
      assert(!"unknown delta op.");
    }

  ++build_baton->num_ops;
}
