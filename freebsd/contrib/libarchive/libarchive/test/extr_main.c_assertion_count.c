
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertions ;
 int * msg ;
 int * nextmsg ;

__attribute__((used)) static void
assertion_count(const char *file, int line)
{
 (void)file;
 (void)line;
 ++assertions;

 msg = nextmsg;
 nextmsg = ((void*)0);



}
