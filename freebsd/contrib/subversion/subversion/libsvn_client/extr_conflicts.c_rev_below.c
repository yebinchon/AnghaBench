
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 int SVN_INVALID_REVNUM ;

__attribute__((used)) static svn_revnum_t
rev_below(svn_revnum_t rev)
{
  SVN_ERR_ASSERT_NO_RETURN(rev != SVN_INVALID_REVNUM);
  SVN_ERR_ASSERT_NO_RETURN(rev > 0);

  return rev == 1 ? 1 : rev - 1;
}
