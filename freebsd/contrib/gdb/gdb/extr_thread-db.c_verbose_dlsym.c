
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlerror () ;
 void* dlsym (void*,char const*) ;
 int warning (char*,char const*,int ) ;

__attribute__((used)) static void *
verbose_dlsym (void *handle, const char *name)
{
  void *sym = dlsym (handle, name);
  if (sym == ((void*)0))
    warning ("Symbol \"%s\" not found in libthread_db: %s", name, dlerror ());
  return sym;
}
