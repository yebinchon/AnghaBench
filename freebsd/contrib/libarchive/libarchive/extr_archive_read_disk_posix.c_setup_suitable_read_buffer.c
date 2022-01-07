
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {struct filesystem* current_filesystem; } ;
struct filesystem {int xfer_align; int max_xfer_size; long incr_xfer_size; long min_xfer_size; size_t buff_size; int * allocation_ptr; int * buff; } ;
struct TYPE_2__ {int state; } ;
struct archive_read_disk {TYPE_1__ archive; struct tree* tree; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_FATAL ;
 int ENOMEM ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 int * malloc (size_t) ;

__attribute__((used)) static int
setup_suitable_read_buffer(struct archive_read_disk *a)
{
 struct tree *t = a->tree;
 struct filesystem *cf = t->current_filesystem;
 size_t asize;
 size_t s;

 if (cf->allocation_ptr == ((void*)0)) {



  long xfer_align = (cf->xfer_align == -1)?4096:cf->xfer_align;

  if (cf->max_xfer_size != -1)
   asize = cf->max_xfer_size + xfer_align;
  else {
   long incr = cf->incr_xfer_size;


   if (incr < 0)
    incr = cf->min_xfer_size;
   if (cf->min_xfer_size < 0) {
    incr = xfer_align;
    asize = xfer_align;
   } else
    asize = cf->min_xfer_size;



   while (asize < 1024*64)
    asize += incr;


   asize += xfer_align;
  }
  cf->allocation_ptr = malloc(asize);
  if (cf->allocation_ptr == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "Couldn't allocate memory");
   a->archive.state = ARCHIVE_STATE_FATAL;
   return (ARCHIVE_FATAL);
  }




  s = (uintptr_t)cf->allocation_ptr;
  s %= xfer_align;
  if (s > 0)
   s = xfer_align - s;





  cf->buff = cf->allocation_ptr + s;
  cf->buff_size = asize - xfer_align;
 }
 return (ARCHIVE_OK);
}
