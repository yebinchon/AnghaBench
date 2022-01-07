
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* filename; } ;
typedef TYPE_1__ svn_spillbuf_t ;



const char *
svn_spillbuf__get_filename(const svn_spillbuf_t *buf)
{
  return buf->filename;
}
