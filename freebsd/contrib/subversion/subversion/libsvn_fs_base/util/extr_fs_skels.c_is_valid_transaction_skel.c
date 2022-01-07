
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int transaction_kind_t ;
struct TYPE_13__ {TYPE_6__* children; } ;
typedef TYPE_5__ svn_skel_t ;
typedef int svn_boolean_t ;
struct TYPE_14__ {TYPE_4__* next; } ;
struct TYPE_12__ {TYPE_3__* next; scalar_t__ is_atom; } ;
struct TYPE_11__ {TYPE_2__* next; scalar_t__ is_atom; } ;
struct TYPE_10__ {TYPE_1__* next; int is_atom; } ;
struct TYPE_9__ {int is_atom; } ;


 int FALSE ;
 int TRUE ;
 int svn_skel__list_length (TYPE_5__*) ;
 scalar_t__ svn_skel__matches_atom (TYPE_6__*,char*) ;
 int transaction_kind_committed ;
 int transaction_kind_dead ;
 int transaction_kind_normal ;

__attribute__((used)) static svn_boolean_t
is_valid_transaction_skel(svn_skel_t *skel, transaction_kind_t *kind)
{
  int len = svn_skel__list_length(skel);

  if (len != 5)
    return FALSE;


  if (svn_skel__matches_atom(skel->children, "transaction"))
    *kind = transaction_kind_normal;
  else if (svn_skel__matches_atom(skel->children, "committed"))
    *kind = transaction_kind_committed;
  else if (svn_skel__matches_atom(skel->children, "dead"))
    *kind = transaction_kind_dead;
  else
    return FALSE;

  if (skel->children->next->is_atom
      && skel->children->next->next->is_atom
      && (! skel->children->next->next->next->is_atom)
      && (! skel->children->next->next->next->next->is_atom))
    return TRUE;

  return FALSE;
}
