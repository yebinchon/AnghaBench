
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_boolean_t ;



svn_boolean_t
svn_string_isempty(const svn_string_t *str)
{
  return (str->len == 0);
}
