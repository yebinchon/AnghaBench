
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int new_filename; } ;
typedef TYPE_1__ svn_patch_t ;
typedef int svn_error_t ;
typedef enum parse_state { ____Placeholder_parse_state } parse_state ;
typedef int apr_pool_t ;


 int STRLEN_LITERAL (char*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int grab_filename (int *,char*,int *,int *) ;
 int state_unidiff_found ;
 char* strchr (char*,char) ;

__attribute__((used)) static svn_error_t *
diff_plus(enum parse_state *new_state, char *line, svn_patch_t *patch,
           apr_pool_t *result_pool, apr_pool_t *scratch_pool)
{


  char *tab = strchr(line, '\t');
  if (tab)
    *tab = '\0';

  SVN_ERR(grab_filename(&patch->new_filename, line + STRLEN_LITERAL("+++ "),
                        result_pool, scratch_pool));

  *new_state = state_unidiff_found;

  return SVN_NO_ERROR;
}
