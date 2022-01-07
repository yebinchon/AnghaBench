
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_3__ {int txn_id; } ;
typedef TYPE_1__ representation_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static svn_boolean_t rep_is_mutable(representation_t *rep,
                                    const char *txn_id)
{
  if ((! rep->txn_id) || (strcmp(rep->txn_id, txn_id) != 0))
    return FALSE;
  return TRUE;
}
