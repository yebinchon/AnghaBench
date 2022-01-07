
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; } ;
typedef TYPE_1__ transaction_t ;
typedef int svn_boolean_t ;


 scalar_t__ transaction_kind_committed ;

__attribute__((used)) static svn_boolean_t
is_committed(transaction_t *txn)
{
  return (txn->kind == transaction_kind_committed);
}
