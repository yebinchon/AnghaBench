
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct objfile {int dummy; } ;


 struct type* create_array_type (struct type*,struct type*,struct type*) ;
 struct type* create_range_type (struct type*,struct type*,int,int) ;
 struct type* error_type (char**,struct objfile*) ;
 int read_huge_number (char**,char,int*) ;
 struct type* read_type (char**,struct objfile*) ;

__attribute__((used)) static struct type *
read_array_type (char **pp, struct type *type,
   struct objfile *objfile)
{
  struct type *index_type, *element_type, *range_type;
  int lower, upper;
  int adjustable = 0;
  int nbits;
    {
      index_type = read_type (pp, objfile);
      if (**pp != ';')

 return error_type (pp, objfile);
      ++*pp;
    }

  if (!(**pp >= '0' && **pp <= '9') && **pp != '-')
    {
      (*pp)++;
      adjustable = 1;
    }
  lower = read_huge_number (pp, ';', &nbits);

  if (nbits != 0)
    return error_type (pp, objfile);

  if (!(**pp >= '0' && **pp <= '9') && **pp != '-')
    {
      (*pp)++;
      adjustable = 1;
    }
  upper = read_huge_number (pp, ';', &nbits);
  if (nbits != 0)
    return error_type (pp, objfile);

  element_type = read_type (pp, objfile);

  if (adjustable)
    {
      lower = 0;
      upper = -1;
    }

  range_type =
    create_range_type ((struct type *) ((void*)0), index_type, lower, upper);
  type = create_array_type (type, element_type, range_type);

  return type;
}
