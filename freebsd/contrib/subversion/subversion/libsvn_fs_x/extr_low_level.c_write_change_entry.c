
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int data; int len; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_stream_t ;
struct TYPE_8__ {int data; } ;
struct TYPE_10__ {int change_kind; scalar_t__ node_kind; scalar_t__ mergeinfo_mod; int copyfrom_path; int copyfrom_rev; TYPE_1__ path; scalar_t__ prop_mod; scalar_t__ text_mod; } ;
typedef TYPE_3__ svn_fs_x__change_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 char* ACTION_ADD ;
 char* ACTION_DELETE ;
 char* ACTION_MODIFY ;
 char* ACTION_REPLACE ;
 int FLAG_FALSE ;
 int FLAG_TRUE ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_FS_X__KIND_DIR ;
 int SVN_FS_X__KIND_FILE ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int _ (char*) ;
 char* apr_psprintf (int *,char*,int ,...) ;
 int auto_escape_path (int ,int *) ;
 int * svn_error_createf (int ,int *,int ,int) ;
 int * svn_error_trace (int ) ;




 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_stream_write (int *,int ,int *) ;
 int svn_stringbuf_appendbyte (TYPE_2__*,char) ;
 int svn_stringbuf_appendcstr (TYPE_2__*,char*) ;
 TYPE_2__* svn_stringbuf_createf (int *,char*,char const*,char const*,int ,int ,int ,int ) ;
 scalar_t__ svn_tristate_true ;

__attribute__((used)) static svn_error_t *
write_change_entry(svn_stream_t *stream,
                   svn_fs_x__change_t *change,
                   apr_pool_t *scratch_pool)
{
  const char *change_string = ((void*)0);
  const char *kind_string = "";
  svn_stringbuf_t *buf;
  apr_size_t len;

  switch (change->change_kind)
    {
    case 129:
      change_string = ACTION_MODIFY;
      break;
    case 131:
      change_string = ACTION_ADD;
      break;
    case 130:
      change_string = ACTION_DELETE;
      break;
    case 128:
      change_string = ACTION_REPLACE;
      break;
    default:
      return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                               _("Invalid change type %d"),
                               change->change_kind);
    }

  SVN_ERR_ASSERT(change->node_kind == svn_node_dir
                 || change->node_kind == svn_node_file);
  kind_string = apr_psprintf(scratch_pool, "-%s",
                             change->node_kind == svn_node_dir
                             ? SVN_FS_X__KIND_DIR
                             : SVN_FS_X__KIND_FILE);

  buf = svn_stringbuf_createf(scratch_pool, "%s%s %s %s %s %s\n",
                              change_string, kind_string,
                              change->text_mod ? FLAG_TRUE : FLAG_FALSE,
                              change->prop_mod ? FLAG_TRUE : FLAG_FALSE,
                              change->mergeinfo_mod == svn_tristate_true
                                               ? FLAG_TRUE : FLAG_FALSE,
                              auto_escape_path(change->path.data, scratch_pool));

  if (SVN_IS_VALID_REVNUM(change->copyfrom_rev))
    {
      svn_stringbuf_appendcstr(buf, apr_psprintf(scratch_pool, "%ld %s",
                               change->copyfrom_rev,
                               auto_escape_path(change->copyfrom_path,
                                                scratch_pool)));
    }

  svn_stringbuf_appendbyte(buf, '\n');


  len = buf->len;
  return svn_error_trace(svn_stream_write(stream, buf->data, &len));
}
