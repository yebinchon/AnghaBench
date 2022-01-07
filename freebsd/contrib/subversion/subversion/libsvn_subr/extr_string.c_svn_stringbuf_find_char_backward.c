
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_size_t ;


 int find_char_backward (int ,int ,char) ;

apr_size_t
svn_stringbuf_find_char_backward(const svn_stringbuf_t *str, char ch)
{
  return find_char_backward(str->data, str->len, ch);
}
