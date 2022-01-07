
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MALLOCCHUNK ;
 int _PATH_TTYS ;
 scalar_t__ fopen (int ,char*) ;
 int lbsize ;
 int * line ;
 int * malloc (int ) ;
 int rewind (scalar_t__) ;
 scalar_t__ tf ;

int
setttyent(void)
{

 if (line == ((void*)0)) {
  if ((line = malloc(MALLOCCHUNK)) == ((void*)0))
   return (0);
  lbsize = MALLOCCHUNK;
 }
 if (tf) {
  rewind(tf);
  return (1);
 } else if ( (tf = fopen(_PATH_TTYS, "re")) )
  return (1);
 return (0);
}
