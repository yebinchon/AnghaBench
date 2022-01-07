
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int process_reference (char**) ;

int
symbol_reference_defined (char **string)
{
  char *p = *string;
  int refnum = 0;

  refnum = process_reference (&p);


  if (*p == '=')
    {

      *string = p + 1;
      return refnum;
    }
  else
    {


      *string = p;
      return -1;
    }
}
