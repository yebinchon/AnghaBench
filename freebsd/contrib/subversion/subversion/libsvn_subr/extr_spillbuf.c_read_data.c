
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ spill_size; scalar_t__ blocksize; scalar_t__ spill_start; int * spill; int memory_size; struct memblock_t* head; struct memblock_t* tail; } ;
typedef TYPE_1__ svn_spillbuf_t ;
typedef int svn_error_t ;
struct memblock_t {scalar_t__ size; int data; struct memblock_t* next; } ;
typedef scalar_t__ apr_uint64_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct memblock_t* get_buffer (TYPE_1__*) ;
 int return_buffer (TYPE_1__*,struct memblock_t*) ;
 int * svn_error_trace (int *) ;
 int svn_io_file_close (int *,int *) ;
 int * svn_io_file_read (int *,int ,scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
read_data(struct memblock_t **mem,
          svn_spillbuf_t *buf,
          apr_pool_t *scratch_pool)
{
  svn_error_t *err;


  if (buf->head != ((void*)0))
    {
      *mem = buf->head;
      if (buf->tail == *mem)
        buf->head = buf->tail = ((void*)0);
      else
        buf->head = (*mem)->next;



      buf->memory_size -= (*mem)->size;

      return SVN_NO_ERROR;
    }


  if (buf->spill == ((void*)0))
    {
      *mem = ((void*)0);
      return SVN_NO_ERROR;
    }




  *mem = get_buffer(buf);


  if ((apr_uint64_t)buf->spill_size < (apr_uint64_t)buf->blocksize)
    (*mem)->size = (apr_size_t)buf->spill_size;
  else
    (*mem)->size = buf->blocksize;
  (*mem)->next = ((void*)0);


  err = svn_io_file_read(buf->spill, (*mem)->data, &(*mem)->size,
                         scratch_pool);
  if (err)
    {
      return_buffer(buf, *mem);
      return svn_error_trace(err);
    }


  buf->spill_start += (*mem)->size;


  if ((buf->spill_size -= (*mem)->size) == 0)
    {

      SVN_ERR(svn_io_file_close(buf->spill, scratch_pool));
      buf->spill = ((void*)0);
      buf->spill_start = 0;
    }


  return SVN_NO_ERROR;
}
