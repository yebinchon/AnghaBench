
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** return_val ;
 int return_val_index ;
 int return_val_size ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;
 char* xmalloc (scalar_t__) ;
 scalar_t__ xrealloc (char*,int) ;

__attribute__((used)) static void
completion_list_add_name (char *symname, char *sym_text, int sym_text_len,
     char *text, char *word)
{
  int newsize;
  int i;



  if (strncmp (symname, sym_text, sym_text_len) != 0)
    {
      return;
    }




  {
    char *new;
    if (word == sym_text)
      {
 new = xmalloc (strlen (symname) + 5);
 strcpy (new, symname);
      }
    else if (word > sym_text)
      {

 new = xmalloc (strlen (symname) + 5);
 strcpy (new, symname + (word - sym_text));
      }
    else
      {

 new = xmalloc (strlen (symname) + (sym_text - word) + 5);
 strncpy (new, word, sym_text - word);
 new[sym_text - word] = '\0';
 strcat (new, symname);
      }

    if (return_val_index + 3 > return_val_size)
      {
 newsize = (return_val_size *= 2) * sizeof (char *);
 return_val = (char **) xrealloc ((char *) return_val, newsize);
      }
    return_val[return_val_index++] = new;
    return_val[return_val_index] = ((void*)0);
  }
}
