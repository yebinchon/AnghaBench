
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int TRUE ;
 int svn_cmdline__stdin_is_a_terminal () ;

svn_boolean_t
svn_cmdline__be_interactive(svn_boolean_t non_interactive,
                            svn_boolean_t force_interactive)
{



  if (!force_interactive && !non_interactive)
    {
      return svn_cmdline__stdin_is_a_terminal();
    }
  else if (force_interactive)
    return TRUE;

  return !non_interactive;
}
