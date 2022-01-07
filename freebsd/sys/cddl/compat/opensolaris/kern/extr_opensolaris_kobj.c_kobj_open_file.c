
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _buf {int * ptr; scalar_t__ mounted; } ;


 int KM_SLEEP ;
 struct _buf* kmem_alloc (int,int ) ;
 int kmem_free (struct _buf*,int) ;
 int * kobj_open_file_loader (char const*) ;
 int * kobj_open_file_vnode (char const*) ;
 scalar_t__ root_mounted () ;

struct _buf *
kobj_open_file(const char *file)
{
 struct _buf *out;

 out = kmem_alloc(sizeof(*out), KM_SLEEP);
 out->mounted = root_mounted();




 if (out->mounted)
  out->ptr = kobj_open_file_vnode(file);
 else
  out->ptr = kobj_open_file_loader(file);
 if (out->ptr == ((void*)0)) {
  kmem_free(out, sizeof(*out));
  return ((struct _buf *)-1);
 }
 return (out);
}
