
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef int svn_stringbuf_t ;
typedef int svn_revnum_t ;
struct TYPE_16__ {int idx; TYPE_4__* fs; } ;
typedef TYPE_1__ svn_fs_x__reps_baton_t ;
typedef int svn_fs_x__rep_extractor_t ;
struct TYPE_17__ {int second; int revision; } ;
typedef TYPE_2__ svn_fs_x__pair_cache_key_t ;
struct TYPE_18__ {int reps_container_cache; } ;
typedef TYPE_3__ svn_fs_x__data_t ;
struct TYPE_19__ {TYPE_3__* fsap_data; } ;
typedef TYPE_4__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_14__ {int change_set; } ;
struct TYPE_20__ {int current; TYPE_13__* sfile; TYPE_11__ rep_id; int sub_item; int start; } ;
typedef TYPE_5__ rep_state_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
struct TYPE_15__ {int rfile; TYPE_4__* fs; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int auto_open_shared_file (TYPE_13__*) ;
 int auto_set_start_offset (TYPE_5__*,int *) ;
 int block_read (void**,TYPE_4__*,TYPE_11__*,int ,int *,int *,int *) ;
 int svn_cache__get_partial (void**,int *,int ,TYPE_2__*,int ,TYPE_1__*,int *) ;
 int svn_fs_x__extractor_drive (int **,int *,int ,scalar_t__,int *,int *) ;
 int svn_fs_x__get_revnum (int ) ;
 int svn_fs_x__packed_base_rev (TYPE_4__*,int ) ;
 int svn_fs_x__reps_get_func ;

__attribute__((used)) static svn_error_t *
read_container_window(svn_stringbuf_t **nwin,
                      rep_state_t *rs,
                      apr_size_t size,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_fs_x__rep_extractor_t *extractor = ((void*)0);
  svn_fs_t *fs = rs->sfile->fs;
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_fs_x__pair_cache_key_t key;
  svn_revnum_t revision = svn_fs_x__get_revnum(rs->rep_id.change_set);
  svn_boolean_t is_cached = FALSE;
  svn_fs_x__reps_baton_t baton;

  SVN_ERR(auto_set_start_offset(rs, scratch_pool));
  key.revision = svn_fs_x__packed_base_rev(fs, revision);
  key.second = rs->start;


  baton.fs = fs;
  baton.idx = rs->sub_item;

  SVN_ERR(svn_cache__get_partial((void**)&extractor, &is_cached,
                                 ffd->reps_container_cache, &key,
                                 svn_fs_x__reps_get_func, &baton,
                                 result_pool));


  if (extractor == ((void*)0))
    {
      SVN_ERR(auto_open_shared_file(rs->sfile));
      SVN_ERR(block_read((void **)&extractor, fs, &rs->rep_id,
                         rs->sfile->rfile, ((void*)0),
                         result_pool, scratch_pool));
    }

  SVN_ERR(svn_fs_x__extractor_drive(nwin, extractor, rs->current, size,
                                    result_pool, scratch_pool));


  rs->current += (apr_off_t)size;

  return SVN_NO_ERROR;
}
