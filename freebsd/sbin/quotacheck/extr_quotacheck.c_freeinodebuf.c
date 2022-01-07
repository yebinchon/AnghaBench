
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * inodebuf ;

void
freeinodebuf(void)
{

 if (inodebuf != ((void*)0))
  free(inodebuf);
 inodebuf = ((void*)0);
}
