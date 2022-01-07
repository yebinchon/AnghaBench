
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;


typedef int svn_txdelta_stream_t ;
typedef int svn_stream_t ;
struct TYPE_20__ {TYPE_6__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
struct TYPE_21__ {scalar_t__ type; scalar_t__ base_revision; scalar_t__ base_item_index; } ;
typedef TYPE_3__ svn_fs_fs__rep_header_t ;
typedef int svn_error_t ;
struct TYPE_22__ {TYPE_1__* sfile; } ;
typedef TYPE_4__ rep_state_t ;
struct TYPE_23__ {TYPE_11__* data_rep; } ;
typedef TYPE_5__ node_revision_t ;
struct TYPE_24__ {int fulltext_cache; } ;
typedef TYPE_6__ fs_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_19__ {int * rfile; } ;
struct TYPE_18__ {scalar_t__ revision; scalar_t__ item_index; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int create_rep_state (TYPE_4__**,TYPE_3__**,int *,TYPE_11__*,TYPE_2__*,int *,int *) ;
 int * get_storaged_delta_stream (TYPE_4__*,TYPE_5__*,int *) ;
 int svn_fs_fs__close_revision_file (int *) ;
 int svn_fs_fs__get_contents (int **,TYPE_2__*,TYPE_11__*,int ,int *) ;
 scalar_t__ svn_fs_fs__rep_delta ;
 scalar_t__ svn_fs_fs__rep_self_delta ;
 int * svn_stream_empty (int *) ;
 int svn_txdelta2 (int **,int *,int *,int ,int *) ;

svn_error_t *
svn_fs_fs__get_file_delta_stream(svn_txdelta_stream_t **stream_p,
                                 svn_fs_t *fs,
                                 node_revision_t *source,
                                 node_revision_t *target,
                                 apr_pool_t *pool)
{
  svn_stream_t *source_stream, *target_stream;
  rep_state_t *rep_state;
  svn_fs_fs__rep_header_t *rep_header;
  fs_fs_data_t *ffd = fs->fsap_data;




  if (target->data_rep && (source || ! ffd->fulltext_cache))
    {

      SVN_ERR(create_rep_state(&rep_state, &rep_header, ((void*)0),
                                target->data_rep, fs, pool, pool));

      if (source && source->data_rep && target->data_rep)
        {



          if (rep_header->type == svn_fs_fs__rep_delta
              && rep_header->base_revision == source->data_rep->revision
              && rep_header->base_item_index == source->data_rep->item_index)
            {
              *stream_p = get_storaged_delta_stream(rep_state, target, pool);
              return SVN_NO_ERROR;
            }
        }
      else if (!source)
        {



          if (rep_header->type == svn_fs_fs__rep_self_delta)
            {
              *stream_p = get_storaged_delta_stream(rep_state, target, pool);
              return SVN_NO_ERROR;
            }
        }


      if (rep_state->sfile->rfile)
        {
          SVN_ERR(svn_fs_fs__close_revision_file(rep_state->sfile->rfile));
          rep_state->sfile->rfile = ((void*)0);
        }
    }


  if (source)
    SVN_ERR(svn_fs_fs__get_contents(&source_stream, fs, source->data_rep,
                                    TRUE, pool));
  else
    source_stream = svn_stream_empty(pool);
  SVN_ERR(svn_fs_fs__get_contents(&target_stream, fs, target->data_rep,
                                  TRUE, pool));




  svn_txdelta2(stream_p, source_stream, target_stream, FALSE, pool);

  return SVN_NO_ERROR;
}
