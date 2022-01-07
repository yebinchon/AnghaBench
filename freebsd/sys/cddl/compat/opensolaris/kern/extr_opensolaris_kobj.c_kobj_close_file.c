
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _buf {int ptr; scalar_t__ mounted; } ;
struct TYPE_3__ {int td_ucred; } ;


 int FREAD ;
 TYPE_1__* curthread ;
 int kmem_free (struct _buf*,int) ;
 int vn_close (int ,int ,int ,TYPE_1__*) ;

void
kobj_close_file(struct _buf *file)
{

 if (file->mounted)
  vn_close(file->ptr, FREAD, curthread->td_ucred, curthread);
 kmem_free(file, sizeof(*file));
}
