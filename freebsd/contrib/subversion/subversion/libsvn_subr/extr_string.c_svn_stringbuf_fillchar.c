
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;


 int memset (int ,unsigned char,int ) ;

void
svn_stringbuf_fillchar(svn_stringbuf_t *str, unsigned char c)
{
  memset(str->data, c, str->len);
}
