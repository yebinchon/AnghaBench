
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;


 int SVN_IS_VALID_REVNUM (scalar_t__) ;

__attribute__((used)) static void
find_youngest_and_oldest_revs(svn_revnum_t *youngest_rev,
                              svn_revnum_t *oldest_rev,
                              svn_revnum_t rev)
{

  if (! SVN_IS_VALID_REVNUM(*youngest_rev)
      || rev > *youngest_rev)
    *youngest_rev = rev;

  if (! SVN_IS_VALID_REVNUM(*oldest_rev)
      || rev < *oldest_rev)
    *oldest_rev = rev;
}
