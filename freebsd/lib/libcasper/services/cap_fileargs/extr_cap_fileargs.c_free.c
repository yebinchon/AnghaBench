
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fa_magic; int * fa_chann; int fa_cache; } ;
typedef TYPE_1__ fileargs_t ;


 scalar_t__ FILEARGS_MAGIC ;
 int assert (int) ;
 int cap_close (int *) ;
 int explicit_bzero (scalar_t__*,int) ;
 int free (TYPE_1__*) ;
 int nvlist_destroy (int ) ;

void
fileargs_free(fileargs_t *fa)
{

 if (fa == ((void*)0))
  return;

 assert(fa->fa_magic == FILEARGS_MAGIC);

 nvlist_destroy(fa->fa_cache);
 if (fa->fa_chann != ((void*)0)) {
  cap_close(fa->fa_chann);
 }
 explicit_bzero(&fa->fa_magic, sizeof(fa->fa_magic));
 free(fa);
}
