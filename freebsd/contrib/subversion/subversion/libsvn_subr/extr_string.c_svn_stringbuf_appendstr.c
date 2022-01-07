
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;


 int svn_stringbuf_appendbytes (TYPE_1__*,int ,int ) ;

void
svn_stringbuf_appendstr(svn_stringbuf_t *targetstr,
                        const svn_stringbuf_t *appendstr)
{
  svn_stringbuf_appendbytes(targetstr, appendstr->data, appendstr->len);
}
