
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int memory_size; } ;
typedef TYPE_1__ svn_spillbuf_t ;
typedef int svn_filesize_t ;



svn_filesize_t
svn_spillbuf__get_memory_size(const svn_spillbuf_t *buf)
{
  return buf->memory_size;
}
