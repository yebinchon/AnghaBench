
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int value ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ svn_membuf_t ;
typedef int apr_size_t ;
typedef int apr_int32_t ;


 int svn_membuf__resize (TYPE_1__*,int) ;

__attribute__((used)) static void
membuf_insert_ucs4(svn_membuf_t *buf, apr_size_t offset, apr_int32_t value)
{
  svn_membuf__resize(buf, (offset + 1) * sizeof(value));
  ((apr_int32_t*)buf->data)[offset] = value;
}
