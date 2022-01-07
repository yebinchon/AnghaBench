
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * lfbuf ;

void
finishlf(void)
{
 if (lfbuf)
  free(lfbuf);
 lfbuf = ((void*)0);
}
