
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EINVAL ;
 int LINE_MAX ;
 int LIST_INIT (int *) ;
 char* MAC_CONFFILE ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 char* getenv (char*) ;
 int internal_initialized ;
 int issetugid () ;
 int label_default_head ;
 int mac_add_type (char*,char*) ;
 int mac_destroy_internal () ;
 char* next_token (char**) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
mac_init_internal(int ignore_errors)
{
 const char *filename;
 char line[LINE_MAX];
 FILE *file;
 int error;

 error = 0;

 LIST_INIT(&label_default_head);

 if (!issetugid() && getenv("MAC_CONFFILE") != ((void*)0))
  filename = getenv("MAC_CONFFILE");
 else
  filename = MAC_CONFFILE;
 file = fopen(filename, "re");
 if (file == ((void*)0))
  return (0);

 while (fgets(line, LINE_MAX, file)) {
  char *comment, *parse, *statement;

  if (line[strlen(line)-1] == '\n')
   line[strlen(line)-1] = '\0';
  else {
   if (ignore_errors)
    continue;
   fclose(file);
   error = EINVAL;
   goto just_return;
  }


  comment = line;
  parse = strsep(&comment, "#");


  statement = next_token(&parse);
  if (statement == ((void*)0))
   continue;

  if (strcmp(statement, "default_labels") == 0) {
   char *name, *labels;

   name = next_token(&parse);
   labels = next_token(&parse);
   if (name == ((void*)0) || labels == ((void*)0) ||
       next_token(&parse) != ((void*)0)) {
    if (ignore_errors)
     continue;
    error = EINVAL;
    fclose(file);
    goto just_return;
   }

   if (mac_add_type(name, labels) == -1) {
    if (ignore_errors)
     continue;
    fclose(file);
    goto just_return;
   }
  } else if (strcmp(statement, "default_ifnet_labels") == 0 ||
      strcmp(statement, "default_file_labels") == 0 ||
      strcmp(statement, "default_process_labels") == 0) {
   char *labels, *type;

   if (strcmp(statement, "default_ifnet_labels") == 0)
    type = "ifnet";
   else if (strcmp(statement, "default_file_labels") == 0)
    type = "file";
   else if (strcmp(statement, "default_process_labels") ==
       0)
    type = "process";

   labels = next_token(&parse);
   if (labels == ((void*)0) || next_token(&parse) != ((void*)0)) {
    if (ignore_errors)
     continue;
    error = EINVAL;
    fclose(file);
    goto just_return;
   }

   if (mac_add_type(type, labels) == -1) {
    if (ignore_errors)
     continue;
    fclose(file);
    goto just_return;
   }
  } else {
   if (ignore_errors)
    continue;
   fclose(file);
   error = EINVAL;
   goto just_return;
  }
 }

 fclose(file);

 internal_initialized = 1;

just_return:
 if (error != 0)
  mac_destroy_internal();
 return (error);
}
