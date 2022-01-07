
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_18__ {int file_noderev_count; int file_noderev_size; int dir_noderev_count; int dir_noderev_size; } ;
typedef TYPE_2__ revision_info_t ;
struct TYPE_19__ {int ref_count; int kind; int revision; int expanded_size; int size; } ;
typedef TYPE_3__ rep_stats_t ;
struct TYPE_20__ {int fs; int stats; } ;
typedef TYPE_4__ query_t ;
struct TYPE_21__ {scalar_t__ kind; int predecessor_id; int created_path; scalar_t__ prop_rep; scalar_t__ data_rep; } ;
typedef TYPE_5__ node_revision_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int add_change (int ,int ,int ,int ,int ,int ,int) ;
 int dir_property_rep ;
 int dir_rep ;
 int file_property_rep ;
 int file_rep ;
 int parse_dir (TYPE_4__*,TYPE_5__*,TYPE_2__*,int *,int *) ;
 int parse_representation (TYPE_3__**,TYPE_4__*,scalar_t__,TYPE_2__*,int *,int *) ;
 int svn_fs_fs__fixup_expanded_size (int ,scalar_t__,int *) ;
 int svn_fs_fs__read_noderev (TYPE_5__**,int *,int *,int *) ;
 int svn_fs_fs__use_log_addressing (int ) ;
 scalar_t__ svn_node_dir ;
 int * svn_stream_from_stringbuf (TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
read_noderev(query_t *query,
             svn_stringbuf_t *noderev_str,
             revision_info_t *revision_info,
             apr_pool_t *result_pool,
             apr_pool_t *scratch_pool)
{
  rep_stats_t *text = ((void*)0);
  rep_stats_t *props = ((void*)0);
  node_revision_t *noderev;

  svn_stream_t *stream = svn_stream_from_stringbuf(noderev_str, scratch_pool);
  SVN_ERR(svn_fs_fs__read_noderev(&noderev, stream, scratch_pool,
                                  scratch_pool));
  SVN_ERR(svn_fs_fs__fixup_expanded_size(query->fs, noderev->data_rep,
                                         scratch_pool));
  SVN_ERR(svn_fs_fs__fixup_expanded_size(query->fs, noderev->prop_rep,
                                         scratch_pool));

  if (noderev->data_rep)
    {
      SVN_ERR(parse_representation(&text, query,
                                   noderev->data_rep, revision_info,
                                   result_pool, scratch_pool));


      if (++text->ref_count == 1)
        text->kind = noderev->kind == svn_node_dir ? dir_rep : file_rep;
    }

  if (noderev->prop_rep)
    {
      SVN_ERR(parse_representation(&props, query,
                                   noderev->prop_rep, revision_info,
                                   result_pool, scratch_pool));


      if (++props->ref_count == 1)
        props->kind = noderev->kind == svn_node_dir ? dir_property_rep
                                                    : file_property_rep;
    }


  if (text && text->ref_count == 1)
    add_change(query->stats, text->size, text->expanded_size, text->revision,
               noderev->created_path, text->kind, !noderev->predecessor_id);
  if (props && props->ref_count == 1)
    add_change(query->stats, props->size, props->expanded_size,
               props->revision, noderev->created_path, props->kind,
               !noderev->predecessor_id);



  if ( noderev->kind == svn_node_dir && text && text->ref_count == 1
      && !svn_fs_fs__use_log_addressing(query->fs))
    SVN_ERR(parse_dir(query, noderev, revision_info, result_pool,
                      scratch_pool));


  if (noderev->kind == svn_node_dir)
    {
      revision_info->dir_noderev_size += noderev_str->len;
      revision_info->dir_noderev_count++;
    }
  else
    {
      revision_info->file_noderev_size += noderev_str->len;
      revision_info->file_noderev_count++;
    }

  return SVN_NO_ERROR;
}
