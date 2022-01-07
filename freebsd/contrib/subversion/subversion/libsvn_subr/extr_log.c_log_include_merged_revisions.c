
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_boolean_t ;



__attribute__((used)) static const char *
log_include_merged_revisions(svn_boolean_t include_merged_revisions)
{
  if (include_merged_revisions)
    return " include-merged-revisions";
  return "";
}
