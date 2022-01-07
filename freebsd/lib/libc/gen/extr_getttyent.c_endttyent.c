
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 scalar_t__ fclose (int *) ;
 int * tf ;

int
endttyent(void)
{
 int rval;





 if (tf) {
  rval = (fclose(tf) != EOF);
  tf = ((void*)0);
  return (rval);
 }
 return (1);
}
