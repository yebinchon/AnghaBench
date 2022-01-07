
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct memblock_t* avail; } ;
typedef TYPE_1__ svn_spillbuf_t ;
struct memblock_t {struct memblock_t* next; } ;



__attribute__((used)) static void
return_buffer(svn_spillbuf_t *buf,
              struct memblock_t *mem)
{
  mem->next = buf->avail;
  buf->avail = mem;
}
