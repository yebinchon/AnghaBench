
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* data; size_t len; } ;
struct TYPE_7__ {int copyfrom_path; int copyfrom_rev; int copyfrom_known; int mergeinfo_mod; int prop_mod; int text_mod; int node_kind; int change_kind; TYPE_1__ path; } ;
typedef TYPE_2__ svn_fs_path_change3_t ;
struct TYPE_8__ {int copyfrom_path; int copyfrom_rev; int copyfrom_known; int mergeinfo_mod; int prop_mod; int text_mod; int node_kind; int change_kind; } ;
typedef TYPE_3__ svn_fs_path_change2_t ;



__attribute__((used)) static void
convert_path_change(svn_fs_path_change3_t *output,
                    const char *path,
                    size_t path_len,
                    svn_fs_path_change2_t *entry)
{
  output->path.data = path;
  output->path.len = path_len;
  output->change_kind = entry->change_kind;
  output->node_kind = entry->node_kind;
  output->text_mod = entry->text_mod;
  output->prop_mod = entry->prop_mod;
  output->mergeinfo_mod = entry->mergeinfo_mod;
  output->copyfrom_known = entry->copyfrom_known;
  output->copyfrom_rev = entry->copyfrom_rev;
  output->copyfrom_path = entry->copyfrom_path;
}
