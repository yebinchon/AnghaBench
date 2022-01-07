
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXARGS ;
 int ** args ;
 int free (int *) ;

__attribute__((used)) static void
clean(void)
{
 int i;

 for (i = 0; i < MAXARGS; i++) {
  if (args[i] != ((void*)0)) {
   free(args[i]);
   args[i] = ((void*)0);
  }
 }
}
