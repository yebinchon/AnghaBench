
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HALF_LEN ;
 int TRAIL_IDENTICAL ;
 int TRAIL_NEWER ;
 int TRAIL_OLDER ;
 int TRAIL_RENAMED ;
 int strcmp (char const*,char const*) ;
 scalar_t__ strncmp (char const*,char const*,scalar_t__) ;

int
trail_name_compare(const char *name0, const char *name1)
{
 int ret;

 ret = strcmp(name0, name1);
 if (ret == 0)
  return (TRAIL_IDENTICAL);
 if (strncmp(name0, name1, HALF_LEN + 1) == 0)
  return (TRAIL_RENAMED);
 return (ret < 0 ? TRAIL_OLDER : TRAIL_NEWER);
}
