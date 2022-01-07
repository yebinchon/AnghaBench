
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usershell {int * path; } ;


 int assert (int ) ;
 int * strdup (int *) ;

__attribute__((used)) static void
clone_usershell(struct usershell *dest, struct usershell const *src)
{
 assert(dest != ((void*)0));
 assert(src != ((void*)0));

 if (src->path != ((void*)0)) {
  dest->path = strdup(src->path);
  assert(dest->path != ((void*)0));
 }
}
