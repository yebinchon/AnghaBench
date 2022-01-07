
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; scalar_t__ len; int pool; int blocksize; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_size_t ;


 int membuf_ensure (void**,int *,int ,int ) ;
 int memcpy (void*,void*,scalar_t__) ;

void
svn_stringbuf_ensure(svn_stringbuf_t *str, apr_size_t minimum_size)
{
  void *mem = ((void*)0);
  ++minimum_size;

  membuf_ensure(&mem, &str->blocksize, minimum_size, str->pool);
  if (mem && mem != str->data)
    {
      if (str->data)
        memcpy(mem, str->data, str->len + 1);
      str->data = mem;
    }
}
