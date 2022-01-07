
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct objfile {int dummy; } ;
typedef struct type* TYPE_TARGET_TYPE ;


 int NF_COMPLEX ;
 int NF_COMPLEX16 ;
 int NF_COMPLEX32 ;
 int TYPE_CODE_COMPLEX ;
 int TYPE_CODE_FLT ;
 struct type* error_type (char**,struct objfile*) ;
 struct type* init_type (int ,int,int ,int *,struct objfile*) ;
 int read_huge_number (char**,char,int*) ;

__attribute__((used)) static struct type *
read_sun_floating_type (char **pp, int typenums[2], struct objfile *objfile)
{
  int nbits;
  int details;
  int nbytes;
  struct type *rettype;



  details = read_huge_number (pp, ';', &nbits);
  if (nbits != 0)
    return error_type (pp, objfile);


  nbytes = read_huge_number (pp, ';', &nbits);
  if (nbits != 0)
    return error_type (pp, objfile);

  if (details == NF_COMPLEX || details == NF_COMPLEX16
      || details == NF_COMPLEX32)
    {
      rettype = init_type (TYPE_CODE_COMPLEX, nbytes, 0, ((void*)0), objfile);
      TYPE_TARGET_TYPE (rettype)
 = init_type (TYPE_CODE_FLT, nbytes / 2, 0, ((void*)0), objfile);
      return rettype;
    }

  return init_type (TYPE_CODE_FLT, nbytes, 0, ((void*)0), objfile);
}
