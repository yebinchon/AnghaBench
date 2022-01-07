
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kind; TYPE_3__* abspath; } ;
struct TYPE_7__ {TYPE_1__ parse_cache; int state_pool; } ;
typedef TYPE_2__ svn_wc__db_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int data; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ strcmp (int ,char const*) ;
 int svn_io_check_special_path (char const*,int *,scalar_t__*,int *) ;
 int svn_node_symlink ;
 TYPE_3__* svn_stringbuf_create (char const*,int ) ;
 int svn_stringbuf_set (TYPE_3__*,char const*) ;

__attribute__((used)) static svn_error_t *
get_path_kind(svn_node_kind_t *kind,
              svn_wc__db_t *db,
              const char *local_abspath,
              apr_pool_t *scratch_pool)
{
  svn_boolean_t special;
  svn_node_kind_t node_kind;





  if (db->parse_cache.abspath
        && strcmp(db->parse_cache.abspath->data, local_abspath) == 0)
    {

      *kind = db->parse_cache.kind;
      return SVN_NO_ERROR;
    }

  if (!db->parse_cache.abspath)
    {
      db->parse_cache.abspath = svn_stringbuf_create(local_abspath,
                                                     db->state_pool);
    }
  else
    {
      svn_stringbuf_set(db->parse_cache.abspath, local_abspath);
    }

  SVN_ERR(svn_io_check_special_path(local_abspath, &node_kind,
                                    &special, scratch_pool));

  db->parse_cache.kind = (special ? svn_node_symlink : node_kind);
  *kind = db->parse_cache.kind;

  return SVN_NO_ERROR;
}
