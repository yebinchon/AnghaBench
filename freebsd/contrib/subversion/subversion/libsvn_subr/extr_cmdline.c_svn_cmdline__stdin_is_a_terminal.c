
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int STDIN_FILENO ;
 scalar_t__ _isatty (int ) ;
 scalar_t__ isatty (int ) ;

svn_boolean_t
svn_cmdline__stdin_is_a_terminal(void)
{



  return (isatty(STDIN_FILENO) != 0);

}
