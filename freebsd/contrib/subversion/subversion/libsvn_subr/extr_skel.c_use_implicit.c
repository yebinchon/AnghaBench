
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; scalar_t__* data; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_boolean_t ;
typedef size_t apr_size_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__* skel_char_type ;
 scalar_t__ type_name ;
 scalar_t__ type_paren ;
 scalar_t__ type_space ;

__attribute__((used)) static svn_boolean_t
use_implicit(const svn_skel_t *skel)
{

  if (skel->len == 0
      || skel->len >= 100)
    return FALSE;



  if (skel_char_type[(unsigned char) skel->data[0]] != type_name)
    return FALSE;



  {
    apr_size_t i;

    for (i = 1; i < skel->len; i++)
      if (skel_char_type[(unsigned char) skel->data[i]] == type_space
          || skel_char_type[(unsigned char) skel->data[i]] == type_paren)
        return FALSE;
  }



  return TRUE;
}
