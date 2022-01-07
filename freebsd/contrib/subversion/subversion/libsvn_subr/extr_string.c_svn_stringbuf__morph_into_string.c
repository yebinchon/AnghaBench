
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; scalar_t__ len; scalar_t__ blocksize; int * pool; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_string_t ;



svn_string_t *
svn_stringbuf__morph_into_string(svn_stringbuf_t *strbuf)
{
  return (svn_string_t *)&strbuf->data;
}
