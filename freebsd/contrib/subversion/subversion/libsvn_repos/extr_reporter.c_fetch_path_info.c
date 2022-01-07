
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_7__ {int reader; TYPE_2__* lookahead; int pool; } ;
typedef TYPE_1__ report_baton_t ;
struct TYPE_8__ {char* path; } ;
typedef TYPE_2__ path_info_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrmemdup (int *,char const*,int) ;
 int read_path_info (TYPE_2__**,int ,int *) ;
 int relevant (TYPE_2__*,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 int * svn_pool_create (int ) ;

__attribute__((used)) static svn_error_t *
fetch_path_info(report_baton_t *b, const char **entry, path_info_t **info,
                const char *prefix, apr_pool_t *pool)
{
  apr_size_t plen = strlen(prefix);
  const char *relpath, *sep;
  apr_pool_t *subpool;

  if (!relevant(b->lookahead, prefix, plen))
    {

      *entry = ((void*)0);
      *info = ((void*)0);
    }
  else
    {

      relpath = b->lookahead->path + (*prefix ? plen + 1 : 0);
      sep = strchr(relpath, '/');
      if (sep)
        {

          *entry = apr_pstrmemdup(pool, relpath, sep - relpath);
          *info = ((void*)0);
        }
      else
        {

          *entry = relpath;
          *info = b->lookahead;
          subpool = svn_pool_create(b->pool);
          SVN_ERR(read_path_info(&b->lookahead, b->reader, subpool));
        }
    }
  return SVN_NO_ERROR;
}
