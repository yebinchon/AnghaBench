
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int date; int number; } ;
struct TYPE_5__ {int kind; TYPE_1__ value; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,int ) ;
 char const* svn_time_to_cstring (int ,int *) ;

const char *
svn_opt__revision_to_string(const svn_opt_revision_t *revision,
                            apr_pool_t *result_pool)
{
  switch (revision->kind)
    {
      case 129:
        return "unspecified";
      case 131:
        return apr_psprintf(result_pool, "%ld", revision->value.number);
      case 133:

        return svn_time_to_cstring(revision->value.date, result_pool);
      case 134:
        return "committed";
      case 130:
        return "previous";
      case 135:
        return "base";
      case 128:
        return "working";
      case 132:
        return "head";
      default:
        return ((void*)0);
    }
}
