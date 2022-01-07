
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;


 TYPE_1__ curfile ;
 int done (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
xtrlnkskip(char *buf, size_t size)
{

 fprintf(stderr, "unallocated block in symbolic link %s\n",
  curfile.name);
 done(1);
}
