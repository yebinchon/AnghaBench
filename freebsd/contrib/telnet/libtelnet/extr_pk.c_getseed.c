
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int random () ;
 int srandomdev () ;

__attribute__((used)) static void
getseed(char *seed, int seedsize)
{
 int i;

 srandomdev();
 for (i = 0; i < seedsize; i++) {
  seed[i] = random() & 0xff;
 }
}
