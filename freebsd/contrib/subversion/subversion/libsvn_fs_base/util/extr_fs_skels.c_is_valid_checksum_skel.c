
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* children; } ;
typedef TYPE_2__ svn_skel_t ;
typedef int svn_boolean_t ;
struct TYPE_8__ {TYPE_1__* next; } ;
struct TYPE_6__ {scalar_t__ is_atom; } ;


 int FALSE ;
 int TRUE ;
 int svn_skel__list_length (TYPE_2__*) ;
 scalar_t__ svn_skel__matches_atom (TYPE_3__*,char*) ;

__attribute__((used)) static svn_boolean_t
is_valid_checksum_skel(svn_skel_t *skel)
{
  if (svn_skel__list_length(skel) != 2)
    return FALSE;

  if (svn_skel__matches_atom(skel->children, "md5")
      && skel->children->next->is_atom)
    return TRUE;

  if (svn_skel__matches_atom(skel->children, "sha1")
      && skel->children->next->is_atom)
    return TRUE;

  return FALSE;
}
