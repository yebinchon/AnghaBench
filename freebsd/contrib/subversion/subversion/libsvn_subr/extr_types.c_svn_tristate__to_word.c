
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_tristate_t ;






const char *
svn_tristate__to_word(svn_tristate_t tristate)
{
  switch (tristate)
    {
      case 130:
        return "false";
      case 129:
        return "true";
      case 128:
      default:
        return ((void*)0);
    }
}
