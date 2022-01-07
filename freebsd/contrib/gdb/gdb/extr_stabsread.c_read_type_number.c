
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read_huge_number (char**,char,int*) ;

__attribute__((used)) static int
read_type_number (char **pp, int *typenums)
{
  int nbits;
  if (**pp == '(')
    {
      (*pp)++;
      typenums[0] = read_huge_number (pp, ',', &nbits);
      if (nbits != 0)
 return -1;
      typenums[1] = read_huge_number (pp, ')', &nbits);
      if (nbits != 0)
 return -1;
    }
  else
    {
      typenums[0] = 0;
      typenums[1] = read_huge_number (pp, 0, &nbits);
      if (nbits != 0)
 return -1;
    }
  return 0;
}
