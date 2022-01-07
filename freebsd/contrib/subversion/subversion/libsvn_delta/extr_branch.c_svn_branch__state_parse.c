
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_element__payload_t ;
typedef int svn_element__content_t ;
struct TYPE_10__ {int rev; } ;
typedef TYPE_2__ svn_branch__txn_t ;
struct TYPE_11__ {TYPE_1__* priv; } ;
typedef TYPE_3__ svn_branch__state_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_9__ {int is_flat; int history; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_3__* branch_state_create (char*,int,TYPE_2__*,int *) ;
 int branch_state_set_element (TYPE_3__*,int,int *,int *) ;
 int history_parse (int *,int *,int *,int *) ;
 int parse_branch_line (char*,int*,int*,int *,int *,int *) ;
 int parse_element_line (int*,int *,int*,char const**,int *,int *,int *) ;
 int * svn_element__content_create (int,char const*,int *,int *) ;
 int * svn_element__payload_create_ref (int ,char*,int,int *) ;
 int * svn_element__payload_create_subbranch (int *) ;

__attribute__((used)) static svn_error_t *
svn_branch__state_parse(svn_branch__state_t **new_branch,
                       svn_branch__txn_t *txn,
                       svn_stream_t *stream,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  char bid[1000];
  int root_eid, num_eids;
  svn_branch__state_t *branch_state;
  int i;

  SVN_ERR(parse_branch_line(bid, &root_eid, &num_eids,
                            stream, scratch_pool, scratch_pool));

  branch_state = branch_state_create(bid, root_eid, txn,
                                     result_pool);


  SVN_ERR(history_parse(&branch_state->priv->history,
                        stream, result_pool, scratch_pool));



  for (i = 0; i < num_eids; i++)
    {
      int eid, this_parent_eid;
      const char *this_name;
      svn_boolean_t is_subbranch;

      SVN_ERR(parse_element_line(&eid,
                                 &is_subbranch, &this_parent_eid, &this_name,
                                 stream, scratch_pool, scratch_pool));

      if (this_name)
        {
          svn_element__payload_t *payload;
          svn_element__content_t *element;

          if (! is_subbranch)
            {
              payload = svn_element__payload_create_ref(txn->rev, bid, eid,
                                                        result_pool);
            }
          else
            {
              payload
                = svn_element__payload_create_subbranch(result_pool);
            }
          element = svn_element__content_create(this_parent_eid,
                                                this_name, payload,
                                                scratch_pool);
          SVN_ERR(branch_state_set_element(branch_state, eid, element,
                                           scratch_pool));
        }
    }

  branch_state->priv->is_flat = TRUE;
  *new_branch = branch_state;
  return SVN_NO_ERROR;
}
