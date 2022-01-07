
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int data; scalar_t__ is_atom; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_size_t ;


 int FALSE ;
 int memcmp (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

svn_boolean_t
svn_skel__matches_atom(const svn_skel_t *skel, const char *str)
{
  if (skel && skel->is_atom)
    {
      apr_size_t len = strlen(str);

      return (skel->len == len
              && ! memcmp(skel->data, str, len));
    }
  return FALSE;
}
