
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int printf (char*) ;

main()
{
 if (sizeof(long) == 8) {
  printf("-DLONG8\n");
 } else if (sizeof(long) == 4) {
  printf("-DLONG4\n");
 }
 exit(0);
}
