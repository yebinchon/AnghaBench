
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mergeinfo_inheritance_t ;





const char *
svn_inheritance_to_word(svn_mergeinfo_inheritance_t inherit)
{
  switch (inherit)
    {
    case 129:
      return "inherited";
    case 128:
      return "nearest-ancestor";
    default:
      return "explicit";
    }
}
