
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fa_flags; } ;
typedef TYPE_1__ fileargs_t ;
typedef int cap_channel_t ;


 int * cap_init () ;
 int fileargs_free (TYPE_1__*) ;

__attribute__((used)) static inline cap_channel_t *
fileargs_unwrap(fileargs_t *fa, int *fdflags)
{

 if (fdflags != ((void*)0)) {
  *fdflags = fa->fa_flags;
 }
 fileargs_free(fa);
 return (cap_init());
}
