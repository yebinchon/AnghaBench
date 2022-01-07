
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* fsap_data; } ;
typedef TYPE_2__ svn_fs_path_change_iterator_t ;
struct TYPE_9__ {char const* data; int len; } ;
struct TYPE_11__ {int copyfrom_path; int copyfrom_rev; int copyfrom_known; int mergeinfo_mod; int prop_mod; int text_mod; int node_kind; int change_kind; TYPE_1__ path; } ;
typedef TYPE_3__ svn_fs_path_change3_t ;
struct TYPE_12__ {int copyfrom_path; int copyfrom_rev; int copyfrom_known; int mergeinfo_mod; int prop_mod; int text_mod; int node_kind; int change_kind; } ;
typedef TYPE_4__ svn_fs_path_change2_t ;
typedef int svn_error_t ;
struct TYPE_13__ {scalar_t__ hi; TYPE_3__ change; } ;
typedef TYPE_5__ fsap_iterator_data_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_next (scalar_t__) ;
 char* apr_hash_this_key (scalar_t__) ;
 int apr_hash_this_key_len (scalar_t__) ;
 TYPE_4__* apr_hash_this_val (scalar_t__) ;

__attribute__((used)) static svn_error_t *
changes_iterator_get(svn_fs_path_change3_t **change,
                     svn_fs_path_change_iterator_t *iterator)
{
  fsap_iterator_data_t *data = iterator->fsap_data;

  if (data->hi)
    {
      const char *path = apr_hash_this_key(data->hi);
      svn_fs_path_change2_t *entry = apr_hash_this_val(data->hi);

      data->change.path.data = path;
      data->change.path.len = apr_hash_this_key_len(data->hi);
      data->change.change_kind = entry->change_kind;
      data->change.node_kind = entry->node_kind;
      data->change.text_mod = entry->text_mod;
      data->change.prop_mod = entry->prop_mod;
      data->change.mergeinfo_mod = entry->mergeinfo_mod;
      data->change.copyfrom_known = entry->copyfrom_known;
      data->change.copyfrom_rev = entry->copyfrom_rev;
      data->change.copyfrom_path = entry->copyfrom_path;

      *change = &data->change;
      data->hi = apr_hash_next(data->hi);
    }
  else
    {
      *change = ((void*)0);
    }

  return SVN_NO_ERROR;
}
