
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fgetc (int ) ;
 int stdin ;

__attribute__((used)) static int
myreadc (void *arg)
{
  return fgetc (stdin);
}
