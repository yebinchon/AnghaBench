
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; scalar_t__ len; } ;
typedef TYPE_1__ svn_stringbuf_t ;



void
svn_stringbuf_setempty(svn_stringbuf_t *str)
{
  str->data[0] = '\0';
  str->len = 0;
}
