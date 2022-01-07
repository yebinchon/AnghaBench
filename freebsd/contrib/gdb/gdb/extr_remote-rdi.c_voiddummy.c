
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stdout ;

__attribute__((used)) static void
voiddummy (void *dummy)
{
  fprintf_unfiltered (gdb_stdout, "void dummy\n");
}
