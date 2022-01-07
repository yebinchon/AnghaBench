
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_thread_cond__t ;
typedef int svn_error_t ;


 int * SVN_NO_ERROR ;
 int WRAP_APR_ERR (int ,int ) ;
 int _ (char*) ;
 int apr_thread_cond_broadcast (int *) ;

__attribute__((used)) static svn_error_t *
svn_thread_cond__broadcast(svn_thread_cond__t *cond)
{







  return SVN_NO_ERROR;
}
