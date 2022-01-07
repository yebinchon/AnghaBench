
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kind; } ;
typedef TYPE_1__ svn_opt_revision_t ;


 scalar_t__ svn_cstring_casecmp (char const*,char*) ;
 int svn_opt_revision_base ;
 int svn_opt_revision_committed ;
 int svn_opt_revision_head ;
 int svn_opt_revision_previous ;

__attribute__((used)) static int
revision_from_word(svn_opt_revision_t *revision, const char *word)
{
  if (svn_cstring_casecmp(word, "head") == 0)
    {
      revision->kind = svn_opt_revision_head;
    }
  else if (svn_cstring_casecmp(word, "prev") == 0)
    {
      revision->kind = svn_opt_revision_previous;
    }
  else if (svn_cstring_casecmp(word, "base") == 0)
    {
      revision->kind = svn_opt_revision_base;
    }
  else if (svn_cstring_casecmp(word, "committed") == 0)
    {
      revision->kind = svn_opt_revision_committed;
    }
  else
    return -1;

  return 0;
}
