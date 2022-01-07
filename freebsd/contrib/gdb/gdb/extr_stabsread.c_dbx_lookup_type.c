
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct header_file {int length; struct type** vector; } ;


 struct header_file* HEADER_FILES (int ) ;
 int INITIAL_TYPE_VECTOR_LENGTH ;
 int N_HEADER_FILES (int ) ;
 int TYPE_CODE_ERROR ;
 int complaint (int *,char*,int,int,int ) ;
 int current_objfile ;
 struct type* init_type (int ,int ,int ,int *,int *) ;
 int memset (struct type**,int ,int) ;
 int n_this_object_header_files ;
 struct type* rs6000_builtin_type (int) ;
 int symfile_complaints ;
 int symnum ;
 int* this_object_header_files ;
 struct type** type_vector ;
 int type_vector_length ;
 int warning (char*) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (char*,int) ;

__attribute__((used)) static struct type **
dbx_lookup_type (int typenums[2])
{
  int filenum = typenums[0];
  int index = typenums[1];
  unsigned old_len;
  int real_filenum;
  struct header_file *f;
  int f_orig_length;

  if (filenum == -1)
    return 0;

  if (filenum < 0 || filenum >= n_this_object_header_files)
    {
      complaint (&symfile_complaints,
   "Invalid symbol data: type number (%d,%d) out of range at symtab pos %d.",
   filenum, index, symnum);
      goto error_return;
    }

  if (filenum == 0)
    {
      if (index < 0)
 {





   static struct type *temp_type;

   temp_type = rs6000_builtin_type (index);
   return &temp_type;
 }



      if (index >= type_vector_length)
 {
   old_len = type_vector_length;
   if (old_len == 0)
     {
       type_vector_length = INITIAL_TYPE_VECTOR_LENGTH;
       type_vector = (struct type **)
  xmalloc (type_vector_length * sizeof (struct type *));
     }
   while (index >= type_vector_length)
     {
       type_vector_length *= 2;
     }
   type_vector = (struct type **)
     xrealloc ((char *) type_vector,
        (type_vector_length * sizeof (struct type *)));
   memset (&type_vector[old_len], 0,
    (type_vector_length - old_len) * sizeof (struct type *));
 }
      return (&type_vector[index]);
    }
  else
    {
      real_filenum = this_object_header_files[filenum];

      if (real_filenum >= N_HEADER_FILES (current_objfile))
 {
   struct type *temp_type;
   struct type **temp_type_p;

   warning ("GDB internal error: bad real_filenum");

 error_return:
   temp_type = init_type (TYPE_CODE_ERROR, 0, 0, ((void*)0), ((void*)0));
   temp_type_p = (struct type **) xmalloc (sizeof (struct type *));
   *temp_type_p = temp_type;
   return temp_type_p;
 }

      f = HEADER_FILES (current_objfile) + real_filenum;

      f_orig_length = f->length;
      if (index >= f_orig_length)
 {
   while (index >= f->length)
     {
       f->length *= 2;
     }
   f->vector = (struct type **)
     xrealloc ((char *) f->vector, f->length * sizeof (struct type *));
   memset (&f->vector[f_orig_length], 0,
    (f->length - f_orig_length) * sizeof (struct type *));
 }
      return (&f->vector[index]);
    }
}
