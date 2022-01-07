
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct objfile {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;


 int TARGET_CHAR_BIT ;
 int TYPE_CODE_BOOL ;
 int TYPE_CODE_INT ;
 int TYPE_CODE_VOID ;
 int TYPE_FLAG_UNSIGNED ;
 struct type* error_type (char**,struct objfile*) ;
 struct type* init_type (int,int,int ,char*,struct objfile*) ;
 int read_huge_number (char**,char,int*) ;

__attribute__((used)) static struct type *
read_sun_builtin_type (char **pp, int typenums[2], struct objfile *objfile)
{
  int type_bits;
  int nbits;
  int signed_type;
  enum type_code code = TYPE_CODE_INT;

  switch (**pp)
    {
    case 's':
      signed_type = 1;
      break;
    case 'u':
      signed_type = 0;
      break;
    default:
      return error_type (pp, objfile);
    }
  (*pp)++;







  if (**pp == 'c')
    (*pp)++;
  else if (**pp == 'b')
    {
      code = TYPE_CODE_BOOL;
      (*pp)++;
    }





  read_huge_number (pp, ';', &nbits);
  if (nbits != 0)
    return error_type (pp, objfile);


  read_huge_number (pp, ';', &nbits);
  if (nbits != 0)
    return error_type (pp, objfile);


  type_bits = read_huge_number (pp, 0, &nbits);
  if (nbits != 0)
    return error_type (pp, objfile);






  if (**pp == ';')
    ++(*pp);

  if (type_bits == 0)
    return init_type (TYPE_CODE_VOID, 1,
        signed_type ? 0 : TYPE_FLAG_UNSIGNED, (char *) ((void*)0),
        objfile);
  else
    return init_type (code,
        type_bits / TARGET_CHAR_BIT,
        signed_type ? 0 : TYPE_FLAG_UNSIGNED, (char *) ((void*)0),
        objfile);
}
