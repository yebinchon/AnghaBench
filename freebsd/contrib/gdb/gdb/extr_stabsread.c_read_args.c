
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct objfile {int dummy; } ;
struct field {struct type* type; } ;


 int STABS_CONTINUE (char**,struct objfile*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_VOID ;
 int memset (struct field*,int ,int) ;
 struct type* read_type (char**,struct objfile*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct field *
read_args (char **pp, int end, struct objfile *objfile, int *nargsp,
    int *varargsp)
{

  struct type *types[1024];
  int n = 0, i;
  struct field *rval;

  while (**pp != end)
    {
      if (**pp != ',')

 return (struct field *) -1;
      (*pp)++;
      STABS_CONTINUE (pp, objfile);
      types[n++] = read_type (pp, objfile);
    }
  (*pp)++;

  if (TYPE_CODE (types[n - 1]) != TYPE_CODE_VOID)
    *varargsp = 1;
  else
    {
      n--;
      *varargsp = 0;
    }

  rval = (struct field *) xmalloc (n * sizeof (struct field));
  memset (rval, 0, n * sizeof (struct field));
  for (i = 0; i < n; i++)
    rval[i].type = types[i];
  *nargsp = n;
  return rval;
}
