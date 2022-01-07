
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct objfile {int objfile_obstack; int * demangled_names_hash; } ;
struct TYPE_3__ {char* demangled_name; } ;
struct TYPE_4__ {TYPE_1__ cplus_specific; } ;
struct general_symbol_info {scalar_t__ language; char* name; TYPE_2__ language_specific; } ;


 int INSERT ;
 char* JAVA_PREFIX ;
 int JAVA_PREFIX_LEN ;
 char* alloca (int) ;
 int create_demangled_names_hash (struct objfile*) ;
 scalar_t__ htab_find_slot (int *,char const*,int ) ;
 scalar_t__ language_java ;
 int memcpy (char*,char const*,int) ;
 char* obstack_alloc (int *,int) ;
 int strlen (char*) ;
 char* symbol_find_demangled_name (struct general_symbol_info*,char const*) ;
 int xfree (char*) ;

void
symbol_set_names (struct general_symbol_info *gsymbol,
    const char *linkage_name, int len, struct objfile *objfile)
{
  char **slot;

  const char *linkage_name_copy;


  const char *lookup_name;

  int lookup_len;

  if (objfile->demangled_names_hash == ((void*)0))
    create_demangled_names_hash (objfile);




  if (gsymbol->language == language_java)
    {
      char *alloc_name;
      lookup_len = len + JAVA_PREFIX_LEN;

      alloc_name = alloca (lookup_len + 1);
      memcpy (alloc_name, JAVA_PREFIX, JAVA_PREFIX_LEN);
      memcpy (alloc_name + JAVA_PREFIX_LEN, linkage_name, len);
      alloc_name[lookup_len] = '\0';

      lookup_name = alloc_name;
      linkage_name_copy = alloc_name + JAVA_PREFIX_LEN;
    }
  else if (linkage_name[len] != '\0')
    {
      char *alloc_name;
      lookup_len = len;

      alloc_name = alloca (lookup_len + 1);
      memcpy (alloc_name, linkage_name, len);
      alloc_name[lookup_len] = '\0';

      lookup_name = alloc_name;
      linkage_name_copy = alloc_name;
    }
  else
    {
      lookup_len = len;
      lookup_name = linkage_name;
      linkage_name_copy = linkage_name;
    }

  slot = (char **) htab_find_slot (objfile->demangled_names_hash,
       lookup_name, INSERT);


  if (*slot == ((void*)0))
    {
      char *demangled_name = symbol_find_demangled_name (gsymbol,
        linkage_name_copy);
      int demangled_len = demangled_name ? strlen (demangled_name) : 0;




      *slot = obstack_alloc (&objfile->objfile_obstack,
        lookup_len + demangled_len + 2);
      memcpy (*slot, lookup_name, lookup_len + 1);
      if (demangled_name != ((void*)0))
 {
   memcpy (*slot + lookup_len + 1, demangled_name, demangled_len + 1);
   xfree (demangled_name);
 }
      else
 (*slot)[lookup_len + 1] = '\0';
    }

  gsymbol->name = *slot + lookup_len - len;
  if ((*slot)[lookup_len + 1] != '\0')
    gsymbol->language_specific.cplus_specific.demangled_name
      = &(*slot)[lookup_len + 1];
  else
    gsymbol->language_specific.cplus_specific.demangled_name = ((void*)0);
}
