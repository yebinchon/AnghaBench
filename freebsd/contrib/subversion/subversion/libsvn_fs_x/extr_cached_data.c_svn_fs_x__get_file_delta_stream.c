
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_txdelta_stream_t ;
typedef int svn_stream_t ;
struct TYPE_16__ {scalar_t__ type; scalar_t__ base_revision; scalar_t__ base_item_index; } ;
typedef TYPE_3__ svn_fs_x__rep_header_t ;
struct TYPE_17__ {TYPE_8__* data_rep; } ;
typedef TYPE_4__ svn_fs_x__noderev_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_18__ {TYPE_2__* sfile; } ;
typedef TYPE_5__ rep_state_t ;
typedef int apr_pool_t ;
struct TYPE_14__ {scalar_t__ number; int change_set; } ;
struct TYPE_19__ {TYPE_1__ id; } ;
struct TYPE_15__ {int * rfile; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int create_rep_state (TYPE_5__**,TYPE_3__**,int *,TYPE_8__*,int *,int *,int *) ;
 int * get_storaged_delta_stream (TYPE_5__*,TYPE_4__*,int *) ;
 int svn_fs_x__close_revision_file (int *) ;
 int svn_fs_x__get_contents (int **,int *,TYPE_8__*,int ,int *) ;
 scalar_t__ svn_fs_x__get_revnum (int ) ;
 scalar_t__ svn_fs_x__rep_delta ;
 scalar_t__ svn_fs_x__rep_self_delta ;
 int * svn_stream_empty (int *) ;
 int svn_txdelta2 (int **,int *,int *,int ,int *) ;

svn_error_t *
svn_fs_x__get_file_delta_stream(svn_txdelta_stream_t **stream_p,
                                svn_fs_t *fs,
                                svn_fs_x__noderev_t *source,
                                svn_fs_x__noderev_t *target,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  svn_stream_t *source_stream, *target_stream;
  rep_state_t *rep_state;
  svn_fs_x__rep_header_t *rep_header;




  if (target->data_rep && source)
    {

      SVN_ERR(create_rep_state(&rep_state, &rep_header, ((void*)0),
                               target->data_rep, fs, result_pool,
                               scratch_pool));



      if (source && source->data_rep && target->data_rep)
        {



          if (rep_header->type == svn_fs_x__rep_delta
              && rep_header->base_revision
                 == svn_fs_x__get_revnum(source->data_rep->id.change_set)
              && rep_header->base_item_index == source->data_rep->id.number)
            {
              *stream_p = get_storaged_delta_stream(rep_state, target,
                                                    result_pool);
              return SVN_NO_ERROR;
            }
        }
      else if (!source)
        {



          if (rep_header->type == svn_fs_x__rep_self_delta)
            {
              *stream_p = get_storaged_delta_stream(rep_state, target,
                                                    result_pool);
              return SVN_NO_ERROR;
            }
        }


      if (rep_state->sfile->rfile)
        {
          SVN_ERR(svn_fs_x__close_revision_file(rep_state->sfile->rfile));
          rep_state->sfile->rfile = ((void*)0);
        }
    }


  if (source)
    SVN_ERR(svn_fs_x__get_contents(&source_stream, fs, source->data_rep,
                                   TRUE, result_pool));
  else
    source_stream = svn_stream_empty(result_pool);

  SVN_ERR(svn_fs_x__get_contents(&target_stream, fs, target->data_rep,
                                 TRUE, result_pool));




  svn_txdelta2(stream_p, source_stream, target_stream, FALSE, result_pool);

  return SVN_NO_ERROR;
}
