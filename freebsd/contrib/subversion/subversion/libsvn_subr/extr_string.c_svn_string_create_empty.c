
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int empty_buffer ;

svn_string_t *
svn_string_create_empty(apr_pool_t *pool)
{
  svn_string_t *new_string = apr_palloc(pool, sizeof(*new_string));
  new_string->data = empty_buffer;
  new_string->len = 0;

  return new_string;
}
