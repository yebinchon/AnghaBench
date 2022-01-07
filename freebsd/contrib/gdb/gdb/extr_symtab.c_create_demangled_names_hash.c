
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int md; int demangled_names_hash; } ;


 int htab_create_alloc_ex (int,int ,int (*) (void const*,void const*),int *,int ,int ,int ) ;
 int htab_hash_string ;
 scalar_t__ streq ;
 int xmcalloc ;
 int xmfree ;

__attribute__((used)) static void
create_demangled_names_hash (struct objfile *objfile)
{





  objfile->demangled_names_hash = htab_create_alloc_ex
    (256, htab_hash_string, (int (*) (const void *, const void *)) streq,
     ((void*)0), objfile->md, xmcalloc, xmfree);
}
