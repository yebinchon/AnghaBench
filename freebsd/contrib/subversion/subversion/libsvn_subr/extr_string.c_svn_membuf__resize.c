
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; int pool; int size; } ;
typedef TYPE_1__ svn_membuf_t ;
typedef int apr_size_t ;


 int membuf_ensure (void**,int *,int ,int ) ;
 int memcpy (void const* const,void const* const,int const) ;

void
svn_membuf__resize(svn_membuf_t *membuf, apr_size_t size)
{
  const void *const old_data = membuf->data;
  const apr_size_t old_size = membuf->size;

  membuf_ensure(&membuf->data, &membuf->size, size, membuf->pool);



  if (old_data && old_data != membuf->data)
    memcpy(membuf->data, old_data, old_size);
}
