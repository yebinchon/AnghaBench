
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int try_to_run (int,int,char* const*,char*,char*) ;

__attribute__((used)) static void
expect_missing_library(int binary, char *pathfds)
{
 char * const env[] = { pathfds, ((void*)0) };
 try_to_run(binary, 1, env, "",
    "ld-elf.so.1: Shared object \"libpythagoras.so.0\" not found,"
     " required by \"target\"\n");
}
