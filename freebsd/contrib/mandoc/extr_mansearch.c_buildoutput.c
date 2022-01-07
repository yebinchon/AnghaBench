
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbm_page {char* name; char* sect; char* arch; int addr; int desc; } ;






 int assert (int) ;
 int dbm_macro_bypage (size_t,int ) ;
 char* dbm_macro_next () ;
 int free (char*) ;
 int lstcat (char*,size_t*,char const*,char*) ;
 int lstlen (char const*,int) ;
 int mandoc_asprintf (char**,char*,char const*,char const*,char*) ;
 char* mandoc_malloc (size_t) ;
 char* mandoc_strdup (int ) ;

__attribute__((used)) static char *
buildoutput(size_t im, struct dbm_page *page)
{
 const char *oldoutput, *sep, *input;
 char *output, *newoutput, *value;
 size_t sz, i;

 switch (im) {
 case 131:
  return mandoc_strdup(page->desc);
 case 130:
  input = page->name;
  break;
 case 128:
  input = page->sect;
  break;
 case 129:
  input = page->arch;
  if (input == ((void*)0))
   input = "all\0";
  break;
 default:
  input = ((void*)0);
  break;
 }

 if (input != ((void*)0)) {
  sz = lstlen(input, 3) + 1;
  output = mandoc_malloc(sz);
  i = 0;
  lstcat(output, &i, input, " # ");
  output[i++] = '\0';
  assert(i == sz);
  return output;
 }

 output = ((void*)0);
 dbm_macro_bypage(im - 2, page->addr);
 while ((value = dbm_macro_next()) != ((void*)0)) {
  if (output == ((void*)0)) {
   oldoutput = "";
   sep = "";
  } else {
   oldoutput = output;
   sep = " # ";
  }
  mandoc_asprintf(&newoutput, "%s%s%s", oldoutput, sep, value);
  free(output);
  output = newoutput;
 }
 return output;
}
