
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_4__ {scalar_t__ sequence_number; } ;
struct TYPE_5__ {TYPE_1__ access; } ;
typedef TYPE_2__ limited_rights_t ;


 scalar_t__ NO_SEQUENCE_NUMBER ;

__attribute__((used)) static svn_boolean_t
has_local_rule(const limited_rights_t *rights)
{
  return rights->access.sequence_number != NO_SEQUENCE_NUMBER;
}
