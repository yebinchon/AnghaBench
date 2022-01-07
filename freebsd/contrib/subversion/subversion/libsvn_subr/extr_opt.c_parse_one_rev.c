
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int number; int date; } ;
struct TYPE_6__ {TYPE_1__ value; int kind; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;


 int SVN_STR_TO_REV (char*) ;
 int apr_time_now () ;
 scalar_t__ revision_from_word (TYPE_2__*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ svn_ctype_isalpha (char) ;
 scalar_t__ svn_ctype_isdigit (char) ;
 int svn_error_clear (int *) ;
 int svn_opt_revision_date ;
 int svn_opt_revision_number ;
 int * svn_parse_date (int *,int *,char*,int ,int *) ;

__attribute__((used)) static char *parse_one_rev(svn_opt_revision_t *revision, char *str,
                           apr_pool_t *pool)
{
  char *end, save;
  while (*str == 'r')
    str++;

  if (*str == '{')
    {
      svn_boolean_t matched;
      apr_time_t tm;
      svn_error_t *err;


      str++;
      end = strchr(str, '}');
      if (!end)
        return ((void*)0);
      *end = '\0';
      err = svn_parse_date(&matched, &tm, str, apr_time_now(), pool);
      if (err)
        {
          svn_error_clear(err);
          return ((void*)0);
        }
      if (!matched)
        return ((void*)0);
      revision->kind = svn_opt_revision_date;
      revision->value.date = tm;
      return end + 1;
    }
  else if (svn_ctype_isdigit(*str))
    {

      end = str + 1;
      while (svn_ctype_isdigit(*end))
        end++;
      save = *end;
      *end = '\0';
      revision->kind = svn_opt_revision_number;
      revision->value.number = SVN_STR_TO_REV(str);
      *end = save;
      return end;
    }
  else if (svn_ctype_isalpha(*str))
    {
      end = str + 1;
      while (svn_ctype_isalpha(*end))
        end++;
      save = *end;
      *end = '\0';
      if (revision_from_word(revision, str) != 0)
        return ((void*)0);
      *end = save;
      return end;
    }
  else
    return ((void*)0);
}
