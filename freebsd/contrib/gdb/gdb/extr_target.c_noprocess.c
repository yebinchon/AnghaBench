
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;

void
noprocess (void)
{
  error ("You can't do that without a process to debug.");
}
