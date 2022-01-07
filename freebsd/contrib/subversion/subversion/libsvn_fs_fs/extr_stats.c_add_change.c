
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_9__ {int by_extension; int file_histogram; int file_rep_histogram; int dir_histogram; int dir_rep_histogram; int file_prop_histogram; int file_prop_rep_histogram; int dir_prop_histogram; int dir_prop_rep_histogram; int unused_rep_histogram; int added_node_size_histogram; int added_rep_size_histogram; int node_size_histogram; int rep_size_histogram; TYPE_2__* largest_changes; } ;
typedef TYPE_1__ svn_fs_fs__stats_t ;
struct TYPE_10__ {scalar_t__ min_size; int count; TYPE_3__** changes; } ;
typedef TYPE_2__ svn_fs_fs__largest_changes_t ;
struct TYPE_11__ {scalar_t__ size; int path; int revision; } ;
typedef TYPE_3__ svn_fs_fs__large_change_info_t ;
struct TYPE_12__ {int rep_histogram; int node_histogram; int extension; } ;
typedef TYPE_4__ svn_fs_fs__extension_info_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int rep_kind_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int APR_HASH_KEY_STRING ;
 int add_to_histogram (int *,scalar_t__) ;
 TYPE_4__* apr_hash_get (int ,char const*,int ) ;
 int * apr_hash_pool_get (int ) ;
 int apr_hash_set (int ,int ,int ,TYPE_4__*) ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;




 char* strrchr (char const*,char) ;
 int svn_stringbuf_set (int ,char const*) ;


__attribute__((used)) static void
add_change(svn_fs_fs__stats_t *stats,
           apr_uint64_t rep_size,
           apr_uint64_t expanded_size,
           svn_revnum_t revision,
           const char *path,
           rep_kind_t kind,
           svn_boolean_t plain_added)
{

  if (rep_size >= stats->largest_changes->min_size)
    {
      apr_size_t i;
      svn_fs_fs__largest_changes_t *largest_changes = stats->largest_changes;
      svn_fs_fs__large_change_info_t *info
        = largest_changes->changes[largest_changes->count - 1];
      info->size = rep_size;
      info->revision = revision;
      svn_stringbuf_set(info->path, path);



      for (i = largest_changes->count - 1; i > 0; --i)
        if (largest_changes->changes[i-1]->size >= rep_size)
          break;
        else
          largest_changes->changes[i] = largest_changes->changes[i-1];

      largest_changes->changes[i] = info;
      largest_changes->min_size
        = largest_changes->changes[largest_changes->count-1]->size;
    }


  add_to_histogram(&stats->rep_size_histogram, rep_size);
  add_to_histogram(&stats->node_size_histogram, expanded_size);

  if (plain_added)
    {
      add_to_histogram(&stats->added_rep_size_histogram, rep_size);
      add_to_histogram(&stats->added_node_size_histogram, expanded_size);
    }


  switch (kind)
    {
      case 128:
        add_to_histogram(&stats->unused_rep_histogram, rep_size);
        break;
      case 132:
        add_to_histogram(&stats->dir_prop_rep_histogram, rep_size);
        add_to_histogram(&stats->dir_prop_histogram, expanded_size);
        break;
      case 130:
        add_to_histogram(&stats->file_prop_rep_histogram, rep_size);
        add_to_histogram(&stats->file_prop_histogram, expanded_size);
        break;
      case 131:
        add_to_histogram(&stats->dir_rep_histogram, rep_size);
        add_to_histogram(&stats->dir_histogram, expanded_size);
        break;
      case 129:
        add_to_histogram(&stats->file_rep_histogram, rep_size);
        add_to_histogram(&stats->file_histogram, expanded_size);
        break;
    }


  if (kind == 129)
    {

      svn_fs_fs__extension_info_t *info;
      const char * file_name = strrchr(path, '/');
      const char * extension = file_name ? strrchr(file_name, '.') : ((void*)0);

      if (extension == ((void*)0) || extension == file_name + 1)
        extension = "(none)";


      info = apr_hash_get(stats->by_extension, extension, APR_HASH_KEY_STRING);
      if (info == ((void*)0))
        {
          apr_pool_t *pool = apr_hash_pool_get(stats->by_extension);
          info = apr_pcalloc(pool, sizeof(*info));
          info->extension = apr_pstrdup(pool, extension);

          apr_hash_set(stats->by_extension, info->extension,
                       APR_HASH_KEY_STRING, info);
        }


      add_to_histogram(&info->node_histogram, expanded_size);
      add_to_histogram(&info->rep_histogram, rep_size);
    }
}
