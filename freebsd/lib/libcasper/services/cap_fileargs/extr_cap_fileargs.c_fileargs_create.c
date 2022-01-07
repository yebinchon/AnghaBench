
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fa_fdflags; int fa_magic; int * fa_chann; int * fa_cache; } ;
typedef TYPE_1__ fileargs_t ;
typedef int cap_channel_t ;


 int FILEARGS_MAGIC ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static fileargs_t *
fileargs_create(cap_channel_t *chan, int fdflags)
{
 fileargs_t *fa;

 fa = malloc(sizeof(*fa));
 if (fa != ((void*)0)) {
  fa->fa_cache = ((void*)0);
  fa->fa_chann = chan;
  fa->fa_fdflags = fdflags;
  fa->fa_magic = FILEARGS_MAGIC;
 }

 return (fa);
}
