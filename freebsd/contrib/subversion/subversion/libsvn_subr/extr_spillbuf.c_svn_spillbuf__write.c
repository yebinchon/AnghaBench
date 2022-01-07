
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ maxsize; scalar_t__ memory_size; scalar_t__ spill_start; scalar_t__ blocksize; struct memblock_t* tail; struct memblock_t* head; int spill_size; int * spill; scalar_t__ spill_all_contents; int pool; scalar_t__ delete_on_close; int dirpath; int filename; } ;
typedef TYPE_1__ svn_spillbuf_t ;
typedef int svn_error_t ;
struct memblock_t {char const* data; scalar_t__ size; struct memblock_t* next; } ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int APR_END ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct memblock_t* get_buffer (TYPE_1__*) ;
 int memcpy (char const*,char const*,scalar_t__) ;
 int svn_io_file_del_none ;
 int svn_io_file_del_on_close ;
 int svn_io_file_seek (int *,int ,int *,int *) ;
 int svn_io_file_write_full (int *,char const*,scalar_t__,int *,int *) ;
 int svn_io_open_unique_file3 (int **,int *,int ,int ,int ,int *) ;

svn_error_t *
svn_spillbuf__write(svn_spillbuf_t *buf,
                    const char *data,
                    apr_size_t len,
                    apr_pool_t *scratch_pool)
{
  struct memblock_t *mem;




  if (buf->spill == ((void*)0)
      && ((buf->maxsize - buf->memory_size) < len))
    {
      SVN_ERR(svn_io_open_unique_file3(&buf->spill,
                                       &buf->filename,
                                       buf->dirpath,
                                       (buf->delete_on_close
                                        ? svn_io_file_del_on_close
                                        : svn_io_file_del_none),
                                       buf->pool, scratch_pool));


      if (buf->spill_all_contents)
        {
          mem = buf->head;
          while (mem != ((void*)0))
            {
              SVN_ERR(svn_io_file_write_full(buf->spill, mem->data, mem->size,
                                             ((void*)0), scratch_pool));
              mem = mem->next;
            }







          buf->spill_start = buf->memory_size;
        }
    }




  if (buf->spill != ((void*)0))
    {
      apr_off_t output_unused = 0;



      SVN_ERR(svn_io_file_seek(buf->spill,
                               APR_END, &output_unused,
                               scratch_pool));

      SVN_ERR(svn_io_file_write_full(buf->spill, data, len,
                                     ((void*)0), scratch_pool));
      buf->spill_size += len;

      return SVN_NO_ERROR;
    }

  while (len > 0)
    {
      apr_size_t amt;

      if (buf->tail == ((void*)0) || buf->tail->size == buf->blocksize)
        {


          mem = get_buffer(buf);
          mem->size = 0;
          mem->next = ((void*)0);
        }
      else
        {
          mem = buf->tail;
        }


      amt = buf->blocksize - mem->size;
      if (amt > len)
        amt = len;


      memcpy(&mem->data[mem->size], data, amt);
      mem->size += amt;
      data += amt;
      len -= amt;




      buf->memory_size += amt;



      if (buf->tail == ((void*)0))
        {
          buf->head = mem;
          buf->tail = mem;
        }
      else if (mem != buf->tail)
        {
          buf->tail->next = mem;
          buf->tail = mem;
        }
    }

  return SVN_NO_ERROR;
}
