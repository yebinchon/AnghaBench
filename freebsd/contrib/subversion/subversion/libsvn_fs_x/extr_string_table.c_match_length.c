
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int apr_uint16_t ;
typedef int apr_size_t ;


 int MIN (int ,int ) ;
 int svn_cstring__match_length (int ,int ,int ) ;

__attribute__((used)) static apr_uint16_t
match_length(const svn_string_t *lhs,
             const svn_string_t *rhs)
{
  apr_size_t len = MIN(lhs->len, rhs->len);
  return (apr_uint16_t)svn_cstring__match_length(lhs->data, rhs->data, len);
}
