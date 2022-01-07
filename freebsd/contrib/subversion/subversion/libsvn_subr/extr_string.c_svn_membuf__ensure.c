
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; int size; int data; } ;
typedef TYPE_1__ svn_membuf_t ;
typedef int apr_size_t ;


 int membuf_ensure (int *,int *,int ,int ) ;

void
svn_membuf__ensure(svn_membuf_t *membuf, apr_size_t size)
{
  membuf_ensure(&membuf->data, &membuf->size, size, membuf->pool);
}
