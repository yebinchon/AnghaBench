
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos__dumpfile_headers_t ;
typedef int svn_repos__dumpfile_header_entry_t ;
typedef int apr_pool_t ;


 int * apr_array_make (int *,int,int) ;

svn_repos__dumpfile_headers_t *
svn_repos__dumpfile_headers_create(apr_pool_t *pool)
{
  svn_repos__dumpfile_headers_t *headers
    = apr_array_make(pool, 5, sizeof(svn_repos__dumpfile_header_entry_t));

  return headers;
}
