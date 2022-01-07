
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int apr_size_t ;


 int string_first_non_whitespace (int ,int ) ;

apr_size_t
svn_string_first_non_whitespace(const svn_string_t *str)
{
  return
    string_first_non_whitespace(str->data, str->len);
}
