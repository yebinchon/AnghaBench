
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_19__ {TYPE_9__* children; } ;
typedef TYPE_8__ svn_skel_t ;
typedef int svn_boolean_t ;
struct TYPE_20__ {TYPE_7__* next; } ;
struct TYPE_18__ {TYPE_6__* next; scalar_t__ is_atom; } ;
struct TYPE_17__ {TYPE_5__* next; scalar_t__ is_atom; } ;
struct TYPE_16__ {TYPE_4__* next; scalar_t__ is_atom; } ;
struct TYPE_15__ {TYPE_3__* next; scalar_t__ is_atom; } ;
struct TYPE_14__ {TYPE_2__* next; scalar_t__ is_atom; } ;
struct TYPE_13__ {TYPE_1__* next; scalar_t__ is_atom; } ;
struct TYPE_12__ {scalar_t__ is_atom; } ;


 int FALSE ;
 int TRUE ;
 int svn_skel__list_length (TYPE_8__*) ;
 scalar_t__ svn_skel__matches_atom (TYPE_9__*,char*) ;

__attribute__((used)) static svn_boolean_t
is_valid_lock_skel(svn_skel_t *skel)
{
  if ((svn_skel__list_length(skel) == 8)
      && svn_skel__matches_atom(skel->children, "lock")
      && skel->children->next->is_atom
      && skel->children->next->next->is_atom
      && skel->children->next->next->next->is_atom
      && skel->children->next->next->next->next->is_atom
      && skel->children->next->next->next->next->next->is_atom
      && skel->children->next->next->next->next->next->next->is_atom
      && skel->children->next->next->next->next->next->next->next->is_atom)
    return TRUE;

  return FALSE;
}
