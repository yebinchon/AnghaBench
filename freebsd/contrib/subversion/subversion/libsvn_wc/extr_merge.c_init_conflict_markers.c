
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* apr_psprintf (int *,char*,char const*) ;

__attribute__((used)) static void
init_conflict_markers(const char **target_marker,
                      const char **left_marker,
                      const char **right_marker,
                      const char *target_label,
                      const char *left_label,
                      const char *right_label,
                      apr_pool_t *pool)
{

  if (target_label)
    *target_marker = apr_psprintf(pool, "<<<<<<< %s", target_label);
  else
    *target_marker = "<<<<<<< .working";

  if (left_label)
    *left_marker = apr_psprintf(pool, "||||||| %s", left_label);
  else
    *left_marker = "||||||| .old";

  if (right_label)
    *right_marker = apr_psprintf(pool, ">>>>>>> %s", right_label);
  else
    *right_marker = ">>>>>>> .new";
}
