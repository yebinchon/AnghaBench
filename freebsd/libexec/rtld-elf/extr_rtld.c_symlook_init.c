
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; int hash_gnu; int hash; } ;
typedef TYPE_1__ SymLook ;


 int bzero (TYPE_1__*,int) ;
 int elf_hash (char const*) ;
 int gnu_hash (char const*) ;

void
symlook_init(SymLook *dst, const char *name)
{

 bzero(dst, sizeof(*dst));
 dst->name = name;
 dst->hash = elf_hash(name);
 dst->hash_gnu = gnu_hash(name);
}
