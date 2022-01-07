
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int (* to_xfer_memory ) (int ,void*,int,int,int *,struct target_ops*) ;TYPE_1__* beneath; } ;
struct cleanup {int dummy; } ;
typedef enum target_object { ____Placeholder_target_object } target_object ;
typedef int ULONGEST ;
struct TYPE_2__ {int (* to_xfer_partial ) (TYPE_1__*,int,char const*,void*,void const*,int ,int) ;} ;
typedef int LONGEST ;


 int TARGET_OBJECT_MEMORY ;
 int do_cleanups (struct cleanup*) ;
 scalar_t__ errno ;
 struct cleanup* make_cleanup (int ,void*) ;
 int memcpy (void*,void const*,int) ;
 int stub1 (int ,void*,int,int,int *,struct target_ops*) ;
 int stub2 (int ,void*,int,int,int *,struct target_ops*) ;
 int stub3 (TYPE_1__*,int,char const*,void*,void const*,int ,int) ;
 int xfree ;
 void* xmalloc (int) ;

__attribute__((used)) static LONGEST
default_xfer_partial (struct target_ops *ops, enum target_object object,
        const char *annex, void *readbuf,
        const void *writebuf, ULONGEST offset, LONGEST len)
{
  if (object == TARGET_OBJECT_MEMORY
      && ops->to_xfer_memory != ((void*)0))


    {
      int xfered = -1;
      errno = 0;
      if (writebuf != ((void*)0))
 {
   void *buffer = xmalloc (len);
   struct cleanup *cleanup = make_cleanup (xfree, buffer);
   memcpy (buffer, writebuf, len);
   xfered = ops->to_xfer_memory (offset, buffer, len, 1 , ((void*)0),
     ops);
   do_cleanups (cleanup);
 }
      if (readbuf != ((void*)0))
 xfered = ops->to_xfer_memory (offset, readbuf, len, 0 , ((void*)0),
          ops);
      if (xfered > 0)
 return xfered;
      else if (xfered == 0 && errno == 0)


 return 0;
      else
 return -1;
    }
  else if (ops->beneath != ((void*)0))
    return ops->beneath->to_xfer_partial (ops->beneath, object, annex,
       readbuf, writebuf, offset, len);
  else
    return -1;
}
