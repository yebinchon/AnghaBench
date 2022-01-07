
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {scalar_t__ ind; scalar_t__ argc; int * argv; } ;
typedef TYPE_1__ apr_getopt_t ;
typedef int apr_array_header_t ;


 int DEFAULT_ARRAY_SIZE ;
 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int * SVN_NO_ERROR ;
 int * apr_array_make (int *,int ,int) ;
 int array_push_str (int *,int ,int *) ;
 int * svn_error_create (int ,int ,int *) ;

svn_error_t *
svn_opt_parse_all_args(apr_array_header_t **args_p,
                       apr_getopt_t *os,
                       apr_pool_t *pool)
{
  apr_array_header_t *args
    = apr_array_make(pool, DEFAULT_ARRAY_SIZE, sizeof(const char *));

  if (os->ind > os->argc)
    {
      return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, 0, ((void*)0));
    }
  while (os->ind < os->argc)
    {
      array_push_str(args, os->argv[os->ind++], pool);
    }

  *args_p = args;
  return SVN_NO_ERROR;
}
