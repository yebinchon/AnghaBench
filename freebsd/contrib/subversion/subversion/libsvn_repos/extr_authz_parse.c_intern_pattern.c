
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int ctor_baton_t ;
typedef int apr_size_t ;


 int intern_string (int *,char const*,int ) ;

__attribute__((used)) static void
intern_pattern(ctor_baton_t *cb,
               svn_string_t *pattern,
               const char *string,
               apr_size_t len)
{
  pattern->data = intern_string(cb, string, len);
  pattern->len = len;
}
