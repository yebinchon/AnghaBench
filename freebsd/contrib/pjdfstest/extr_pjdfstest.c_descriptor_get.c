
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* descriptors ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int ndescriptors ;
 int stderr ;

__attribute__((used)) static int
descriptor_get(int pos)
{

 if (pos < 0 || pos >= ndescriptors) {
  fprintf(stderr, "invalid descriptor %d\n", pos);
  exit(1);
 }

 return (descriptors[pos]);
}
