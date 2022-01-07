
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prop_dictionary_t ;


 int assert (int) ;
 int free (char*) ;
 char* prop_dictionary_externalize (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool
dictionary_equals(prop_dictionary_t ld, prop_dictionary_t rd)
{
 bool eq;
 char *lt, *rt;

 lt = prop_dictionary_externalize(ld);
 rt = prop_dictionary_externalize(rd);

 assert(lt != ((void*)0) && rt != ((void*)0));

 eq = (strcmp(lt, rt) == 0);

 free(lt);
 free(rt);

 return eq;
}
