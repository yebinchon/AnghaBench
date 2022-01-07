
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int * getenv (char*) ;

__attribute__((used)) static svn_boolean_t
quiet_mode(void)
{
  return getenv("SVN_DBG_QUIET") != ((void*)0);
}
