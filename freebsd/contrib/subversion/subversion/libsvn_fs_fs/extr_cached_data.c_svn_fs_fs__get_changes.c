
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


struct TYPE_29__ {scalar_t__ count; int eol; scalar_t__ end_offset; int ** changes; scalar_t__ start_offset; } ;
typedef TYPE_1__ svn_fs_fs__changes_list_t ;
struct TYPE_30__ {int eol; int revision; TYPE_6__* fs; TYPE_9__* revision_file; scalar_t__ next_offset; int next; int rev_file_pool; } ;
typedef TYPE_2__ svn_fs_fs__changes_context_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_31__ {int second; int revision; } ;
typedef TYPE_3__ pair_cache_key_t ;
struct TYPE_32__ {scalar_t__ changes_cache; } ;
typedef TYPE_4__ fs_fs_data_t ;
typedef int change_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
struct TYPE_33__ {scalar_t__ nelts; char* elts; scalar_t__ nalloc; } ;
typedef TYPE_5__ apr_array_header_t ;
struct TYPE_35__ {int file; int stream; } ;
struct TYPE_34__ {TYPE_4__* fsap_data; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__CHANGES_BLOCK_SIZE ;
 scalar_t__ SVN_FS_FS__ITEM_INDEX_CHANGES ;
 int SVN_FS_FS__ITEM_TYPE_CHANGES ;
 int * SVN_NO_ERROR ;
 int aligned_seek (TYPE_6__*,int ,int *,scalar_t__,int *) ;
 TYPE_5__* apr_array_make (int *,int ,int) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int block_read (int *,TYPE_6__*,int ,scalar_t__,TYPE_9__*,int *,int *) ;
 int dbg_log_access (TYPE_6__*,int ,scalar_t__,TYPE_5__*,int ,int *) ;
 int get_root_changes_offset (int *,scalar_t__*,TYPE_9__*,TYPE_6__*,int ,int *) ;
 int svn_cache__get (void**,scalar_t__*,scalar_t__,TYPE_3__*,int *) ;
 int svn_cache__set (scalar_t__,TYPE_3__*,TYPE_1__*,int *) ;
 int svn_fs_fs__close_revision_file (TYPE_9__*) ;
 int svn_fs_fs__ensure_revision_exists (int ,TYPE_6__*,int *) ;
 int svn_fs_fs__item_offset (scalar_t__*,TYPE_6__*,TYPE_9__*,int ,int *,scalar_t__,int *) ;
 int svn_fs_fs__open_pack_or_rev_file (TYPE_9__**,TYPE_6__*,int ,int ,int *) ;
 int svn_fs_fs__read_changes (TYPE_5__**,int ,scalar_t__,int *,int *) ;
 scalar_t__ svn_fs_fs__use_log_addressing (TYPE_6__*) ;
 int svn_io_file_get_offset (scalar_t__*,int ,int *) ;
 scalar_t__ use_block_read (TYPE_6__*) ;

svn_error_t *
svn_fs_fs__get_changes(apr_array_header_t **changes,
                       svn_fs_fs__changes_context_t *context,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  apr_off_t item_index = SVN_FS_FS__ITEM_INDEX_CHANGES;
  svn_boolean_t found;
  fs_fs_data_t *ffd = context->fs->fsap_data;
  svn_fs_fs__changes_list_t *changes_list;

  pair_cache_key_t key;
  key.revision = context->revision;
  key.second = context->next;



  if (ffd->changes_cache)
    {
      SVN_ERR(svn_cache__get((void **)&changes_list, &found,
                             ffd->changes_cache, &key, result_pool));
    }
  else
    {
      found = FALSE;
    }

  if (!found)
    {


      if (!context->revision_file)
        {
          SVN_ERR(svn_fs_fs__ensure_revision_exists(context->revision,
                                                    context->fs,
                                                    scratch_pool));
          SVN_ERR(svn_fs_fs__open_pack_or_rev_file(&context->revision_file,
                                                   context->fs,
                                                   context->revision,
                                                   context->rev_file_pool,
                                                   scratch_pool));
        }

      if (use_block_read(context->fs))
        {




          SVN_ERR(block_read(((void*)0), context->fs,
                             context->revision, SVN_FS_FS__ITEM_INDEX_CHANGES,
                             context->revision_file, scratch_pool,
                             scratch_pool));


          SVN_ERR(svn_cache__get((void **)&changes_list, &found,
                                 ffd->changes_cache, &key, result_pool));
        }


      if (!found)
        {
          apr_off_t changes_offset;



          if (svn_fs_fs__use_log_addressing(context->fs))
            {
              SVN_ERR(svn_fs_fs__item_offset(&changes_offset, context->fs,
                                             context->revision_file,
                                             context->revision, ((void*)0),
                                             SVN_FS_FS__ITEM_INDEX_CHANGES,
                                             scratch_pool));
            }
          else
            {
              SVN_ERR(get_root_changes_offset(((void*)0), &changes_offset,
                                              context->revision_file,
                                              context->fs, context->revision,
                                              scratch_pool));


              item_index = changes_offset;
            }


          SVN_ERR(aligned_seek(context->fs, context->revision_file->file,
                               ((void*)0), changes_offset + context->next_offset,
                               scratch_pool));

          SVN_ERR(svn_fs_fs__read_changes(changes,
                                          context->revision_file->stream,
                                          SVN_FS_FS__CHANGES_BLOCK_SIZE,
                                          result_pool, scratch_pool));


          changes_list = apr_pcalloc(scratch_pool, sizeof(*changes_list));
          SVN_ERR(svn_io_file_get_offset(&changes_list->end_offset,
                                         context->revision_file->file,
                                         scratch_pool));
          changes_list->end_offset -= changes_offset;
          changes_list->start_offset = context->next_offset;
          changes_list->count = (*changes)->nelts;
          changes_list->changes = (change_t **)(*changes)->elts;
          changes_list->eol = changes_list->count < SVN_FS_FS__CHANGES_BLOCK_SIZE;



          if (ffd->changes_cache)
            SVN_ERR(svn_cache__set(ffd->changes_cache, &key, changes_list,
                                   scratch_pool));
        }
    }

  if (found)
    {

      (*changes) = apr_array_make(result_pool, 0, sizeof(void *));
      (*changes)->elts = (char *)changes_list->changes;
      (*changes)->nelts = changes_list->count;
      (*changes)->nalloc = changes_list->count;
    }


  context->next += (*changes)->nelts;
  context->next_offset = changes_list->end_offset;
  context->eol = changes_list->eol;


  if (context->eol && context->revision_file)
    {
      SVN_ERR(svn_fs_fs__close_revision_file(context->revision_file));
      context->revision_file = ((void*)0);
    }

  SVN_ERR(dbg_log_access(context->fs, context->revision, item_index, *changes,
                         SVN_FS_FS__ITEM_TYPE_CHANGES, scratch_pool));

  return SVN_NO_ERROR;
}
