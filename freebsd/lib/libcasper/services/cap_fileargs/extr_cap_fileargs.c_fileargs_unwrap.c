
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fa_magic; int fa_fdflags; int fa_cache; int * fa_chann; } ;
typedef TYPE_1__ fileargs_t ;
typedef int cap_channel_t ;


 scalar_t__ FILEARGS_MAGIC ;
 int assert (int) ;
 int explicit_bzero (scalar_t__*,int) ;
 int free (TYPE_1__*) ;
 int nvlist_destroy (int ) ;

cap_channel_t *
fileargs_unwrap(fileargs_t *fa, int *flags)
{
 cap_channel_t *chan;

 if (fa == ((void*)0))
  return (((void*)0));

 assert(fa->fa_magic == FILEARGS_MAGIC);

 chan = fa->fa_chann;
 if (flags != ((void*)0)) {
  *flags = fa->fa_fdflags;
 }

 nvlist_destroy(fa->fa_cache);
 explicit_bzero(&fa->fa_magic, sizeof(fa->fa_magic));
 free(fa);

 return (chan);
}
