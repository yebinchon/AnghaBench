
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const files_delim; int files_name; int files_file; } ;
typedef TYPE_1__ args_info ;


 scalar_t__ EINTR ;
 int _ (char*) ;
 scalar_t__ errno ;
 scalar_t__ feof (int ) ;
 scalar_t__ ferror (int ) ;
 int fgetc (int ) ;
 int message_error (int ,int ,...) ;
 int strerror (scalar_t__) ;
 int user_abort ;
 char* xmalloc (size_t) ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static const char *
read_name(const args_info *args)
{




 static char *name = ((void*)0);
 static size_t size = 256;






 if (name == ((void*)0))
  name = xmalloc(size);


 size_t pos = 0;


 while (!user_abort) {
  const int c = fgetc(args->files_file);

  if (ferror(args->files_file)) {


   if (errno == EINTR)
    continue;

   message_error(_("%s: Error reading filenames: %s"),
     args->files_name, strerror(errno));
   return ((void*)0);
  }

  if (feof(args->files_file)) {
   if (pos != 0)
    message_error(_("%s: Unexpected end of input "
      "when reading filenames"),
      args->files_name);

   return ((void*)0);
  }

  if (c == args->files_delim) {



   if (pos == 0)
    continue;



   name[pos] = '\0';
   return name;
  }

  if (c == '\0') {



   message_error(_("%s: Null character found when "
     "reading filenames; maybe you meant "
     "to use `--files0' instead "
     "of `--files'?"), args->files_name);
   return ((void*)0);
  }

  name[pos++] = c;




  if (pos == size) {
   size *= 2;
   name = xrealloc(name, size);
  }
 }

 return ((void*)0);
}
