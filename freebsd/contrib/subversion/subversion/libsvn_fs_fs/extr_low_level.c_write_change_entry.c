
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int data; int len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
struct TYPE_9__ {int change_kind; scalar_t__ node_kind; scalar_t__ mergeinfo_mod; int copyfrom_path; int copyfrom_rev; scalar_t__ prop_mod; scalar_t__ text_mod; scalar_t__ node_rev_id; } ;
typedef TYPE_2__ svn_fs_path_change2_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {char* data; } ;


 char* ACTION_ADD ;
 char* ACTION_DELETE ;
 char* ACTION_MODIFY ;
 char* ACTION_REPLACE ;
 char* ACTION_RESET ;
 int FLAG_FALSE ;
 int FLAG_TRUE ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_FS_FS__KIND_DIR ;
 int SVN_FS_FS__KIND_FILE ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int _ (char*) ;
 char* apr_psprintf (int *,char*,int ,...) ;
 int * svn_error_createf (int ,int *,int ,int) ;
 int * svn_error_trace (int ) ;
 TYPE_7__* svn_fs_fs__id_unparse (scalar_t__,int *) ;





 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_stream_write (int *,int ,int *) ;
 int svn_stringbuf_appendbyte (TYPE_1__*,char) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char*) ;
 TYPE_1__* svn_stringbuf_createf (int *,char*,char const*,char const*,char const*,int ,int ,char const*,char const*) ;
 scalar_t__ svn_tristate_true ;
 scalar_t__ svn_tristate_unknown ;

__attribute__((used)) static svn_error_t *
write_change_entry(svn_stream_t *stream,
                   const char *path,
                   svn_fs_path_change2_t *change,
                   svn_boolean_t include_node_kind,
                   svn_boolean_t include_mergeinfo_mods,
                   apr_pool_t *scratch_pool)
{
  const char *idstr;
  const char *change_string = ((void*)0);
  const char *kind_string = "";
  const char *mergeinfo_string = "";
  svn_stringbuf_t *buf;
  apr_size_t len;

  switch (change->change_kind)
    {
    case 130:
      change_string = ACTION_MODIFY;
      break;
    case 132:
      change_string = ACTION_ADD;
      break;
    case 131:
      change_string = ACTION_DELETE;
      break;
    case 129:
      change_string = ACTION_REPLACE;
      break;
    case 128:
      change_string = ACTION_RESET;
      break;
    default:
      return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                               _("Invalid change type %d"),
                               change->change_kind);
    }

  if (change->node_rev_id)
    idstr = svn_fs_fs__id_unparse(change->node_rev_id, scratch_pool)->data;
  else
    idstr = ACTION_RESET;

  if (include_node_kind)
    {
      SVN_ERR_ASSERT(change->node_kind == svn_node_dir
                     || change->node_kind == svn_node_file);
      kind_string = apr_psprintf(scratch_pool, "-%s",
                                 change->node_kind == svn_node_dir
                                 ? SVN_FS_FS__KIND_DIR
                                  : SVN_FS_FS__KIND_FILE);
    }

  if (include_mergeinfo_mods && change->mergeinfo_mod != svn_tristate_unknown)
    mergeinfo_string = apr_psprintf(scratch_pool, " %s",
                                    change->mergeinfo_mod == svn_tristate_true
                                      ? FLAG_TRUE
                                      : FLAG_FALSE);

  buf = svn_stringbuf_createf(scratch_pool, "%s %s%s %s %s%s %s\n",
                              idstr, change_string, kind_string,
                              change->text_mod ? FLAG_TRUE : FLAG_FALSE,
                              change->prop_mod ? FLAG_TRUE : FLAG_FALSE,
                              mergeinfo_string,
                              path);

  if (SVN_IS_VALID_REVNUM(change->copyfrom_rev))
    {
      svn_stringbuf_appendcstr(buf, apr_psprintf(scratch_pool, "%ld %s",
                                                 change->copyfrom_rev,
                                                 change->copyfrom_path));
    }

   svn_stringbuf_appendbyte(buf, '\n');


   len = buf->len;
   return svn_error_trace(svn_stream_write(stream, buf->data, &len));
}
