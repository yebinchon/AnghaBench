
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int number; } ;
struct TYPE_5__ {int kind; TYPE_1__ value; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_INCORRECT_PARAMS ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_ltoa (int *,int ) ;
 char* apr_pstrmemdup (int *,char*,int) ;
 int * svn_error_createf (int ,int *,int ,int,char const*) ;



__attribute__((used)) static svn_error_t *
opt_revision_to_string(const char **str,
                       const char *path,
                       const svn_opt_revision_t *rev,
                       apr_pool_t *pool)
{
  switch (rev->kind)
    {
    case 129:
      *str = apr_pstrmemdup(pool, "HEAD", 4);
      break;
    case 128:
      *str = apr_ltoa(pool, rev->value.number);
      break;
    default:
      return svn_error_createf
        (SVN_ERR_INCORRECT_PARAMS, ((void*)0),
         _("Illegal file external revision kind %d for path '%s'"),
         rev->kind, path);
      break;
    }

  return SVN_NO_ERROR;
}
