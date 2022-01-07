
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dtb_size; int dtb_flags; int * dtb_xamot; int * dtb_tomax; } ;
typedef TYPE_1__ dtrace_buffer_t ;


 int ASSERT (int) ;
 int DTRACEBUF_NOSWITCH ;
 int NCPU ;
 int kmem_free (int *,scalar_t__) ;

__attribute__((used)) static void
dtrace_buffer_free(dtrace_buffer_t *bufs)
{
 int i;

 for (i = 0; i < NCPU; i++) {
  dtrace_buffer_t *buf = &bufs[i];

  if (buf->dtb_tomax == ((void*)0)) {
   ASSERT(buf->dtb_xamot == ((void*)0));
   ASSERT(buf->dtb_size == 0);
   continue;
  }

  if (buf->dtb_xamot != ((void*)0)) {
   ASSERT(!(buf->dtb_flags & DTRACEBUF_NOSWITCH));
   kmem_free(buf->dtb_xamot, buf->dtb_size);
  }

  kmem_free(buf->dtb_tomax, buf->dtb_size);
  buf->dtb_size = 0;
  buf->dtb_tomax = ((void*)0);
  buf->dtb_xamot = ((void*)0);
 }
}
