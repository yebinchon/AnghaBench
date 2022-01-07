
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int fprintf (int ,char*,int ,int ) ;
 int stderr ;

__attribute__((used)) static int
checkitemsize(
 size_t itemsize,
 size_t expected
 )
{
 if (itemsize != expected) {
  (void) fprintf(stderr,
          "***Incorrect item size returned by remote host (%lu should be %lu)\n",
          (u_long)itemsize, (u_long)expected);
  return 0;
 }
 return 1;
}
