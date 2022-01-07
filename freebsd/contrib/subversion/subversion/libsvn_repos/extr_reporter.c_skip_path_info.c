
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {int reader; TYPE_3__* lookahead; int pool; } ;
typedef TYPE_1__ report_baton_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int pool; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_path_info (TYPE_3__**,int ,int *) ;
 scalar_t__ relevant (TYPE_3__*,char const*,int ) ;
 int strlen (char const*) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int ) ;

__attribute__((used)) static svn_error_t *
skip_path_info(report_baton_t *b, const char *prefix)
{
  apr_size_t plen = strlen(prefix);
  apr_pool_t *subpool;

  while (relevant(b->lookahead, prefix, plen))
    {
      svn_pool_destroy(b->lookahead->pool);
      subpool = svn_pool_create(b->pool);
      SVN_ERR(read_path_info(&b->lookahead, b->reader, subpool));
    }
  return SVN_NO_ERROR;
}
