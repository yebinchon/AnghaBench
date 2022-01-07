
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;

__attribute__((used)) static void
usage(void)
{

 errx(1, "devmatch [-adv] [-p nomatch] [-h linker-hints]");
}
