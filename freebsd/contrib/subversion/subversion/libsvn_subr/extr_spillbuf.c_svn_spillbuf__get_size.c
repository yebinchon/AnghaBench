
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ spill_size; scalar_t__ memory_size; } ;
typedef TYPE_1__ svn_spillbuf_t ;
typedef scalar_t__ svn_filesize_t ;



svn_filesize_t
svn_spillbuf__get_size(const svn_spillbuf_t *buf)
{
  return buf->memory_size + buf->spill_size;
}
