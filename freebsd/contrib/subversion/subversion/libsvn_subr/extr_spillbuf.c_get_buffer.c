
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blocksize; struct memblock_t* avail; int pool; struct memblock_t* out_for_reading; } ;
typedef TYPE_1__ svn_spillbuf_t ;
struct memblock_t {struct memblock_t* next; void* data; } ;


 void* apr_palloc (int ,int) ;

__attribute__((used)) static struct memblock_t *
get_buffer(svn_spillbuf_t *buf)
{
  struct memblock_t *mem = buf->out_for_reading;

  if (mem != ((void*)0))
    {
      buf->out_for_reading = ((void*)0);
      return mem;
    }

  if (buf->avail == ((void*)0))
    {
      mem = apr_palloc(buf->pool, sizeof(*mem));
      mem->data = apr_palloc(buf->pool, buf->blocksize);
      return mem;
    }

  mem = buf->avail;
  buf->avail = mem->next;
  return mem;
}
