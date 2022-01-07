
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


struct TYPE_18__ {scalar_t__ type; scalar_t__ base_item_index; int base_revision; int header_size; } ;
typedef TYPE_1__ svn_fs_fs__rep_header_t ;
typedef int svn_error_t ;
struct TYPE_19__ {int representations; TYPE_16__* rev_file; scalar_t__ offset; } ;
typedef TYPE_2__ revision_info_t ;
struct TYPE_20__ {scalar_t__ item_index; int size; int expanded_size; int revision; } ;
typedef TYPE_3__ representation_t ;
struct TYPE_21__ {int chain_length; int header_size; int size; scalar_t__ item_index; int expanded_size; int revision; } ;
typedef TYPE_4__ rep_stats_t ;
struct TYPE_22__ {int fs; } ;
typedef TYPE_5__ query_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_byte_t ;
struct TYPE_17__ {int stream; int file; } ;


 int APR_SET ;
 int MIN (int,int ) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (TYPE_16__*) ;
 int * SVN_NO_ERROR ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 TYPE_4__* find_representation (int*,TYPE_5__*,TYPE_2__**,int ,scalar_t__) ;
 int svn_fs_fs__read_rep_header (TYPE_1__**,int ,int *,int *) ;
 scalar_t__ svn_fs_fs__rep_delta ;
 int svn_fs_fs__use_log_addressing (int ) ;
 int svn_io_file_seek (int ,int ,scalar_t__*,int *) ;
 int svn_sort__array_insert (int ,TYPE_4__**,int) ;

__attribute__((used)) static svn_error_t *
parse_representation(rep_stats_t **representation,
                     query_t *query,
                     representation_t *rep,
                     revision_info_t *revision_info,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  rep_stats_t *result;
  int idx;




  result = find_representation(&idx, query, &revision_info, rep->revision,
                               rep->item_index);
  if (!result)
    {



      result = apr_pcalloc(result_pool, sizeof(*result));
      result->revision = rep->revision;
      result->expanded_size = rep->expanded_size;
      result->item_index = rep->item_index;
      result->size = rep->size;




      if (!svn_fs_fs__use_log_addressing(query->fs))
        {
          svn_fs_fs__rep_header_t *header;
          apr_off_t offset = revision_info->offset
                           + (apr_off_t)rep->item_index;

          SVN_ERR_ASSERT(revision_info->rev_file);
          SVN_ERR(svn_io_file_seek(revision_info->rev_file->file, APR_SET,
                                   &offset, scratch_pool));
          SVN_ERR(svn_fs_fs__read_rep_header(&header,
                                             revision_info->rev_file->stream,
                                             scratch_pool, scratch_pool));

          result->header_size = header->header_size;


          if (header->type == svn_fs_fs__rep_delta)
            {
              int base_idx;
              rep_stats_t *base_rep
                = find_representation(&base_idx, query, ((void*)0),
                                      header->base_revision,
                                      header->base_item_index);

              result->chain_length = 1 + MIN(base_rep->chain_length,
                                             (apr_byte_t)0xfe);
            }
          else
            {
              result->chain_length = 1;
            }
        }

      svn_sort__array_insert(revision_info->representations, &result, idx);
    }

  *representation = result;

  return SVN_NO_ERROR;
}
