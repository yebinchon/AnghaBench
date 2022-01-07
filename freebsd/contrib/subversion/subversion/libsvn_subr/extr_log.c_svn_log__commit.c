
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,int ) ;

const char *
svn_log__commit(svn_revnum_t rev, apr_pool_t *pool)
{
    return apr_psprintf(pool, "commit r%ld", rev);
}
