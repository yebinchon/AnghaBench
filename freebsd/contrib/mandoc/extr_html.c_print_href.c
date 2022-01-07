
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct html {char* base_man1; char* base_man2; char* base_includes; } ;


 int free (char*) ;
 int mandoc_asprintf (char**,char*,char const*,char const*) ;
 int print_byte (struct html*,char) ;
 int print_encode (struct html*,char const*,char const*,int) ;
 int stat (char*,struct stat*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void
print_href(struct html *h, const char *name, const char *sec, int man)
{
 struct stat sb;
 const char *p, *pp;
 char *filename;

 if (man) {
  pp = h->base_man1;
  if (h->base_man2 != ((void*)0)) {
   mandoc_asprintf(&filename, "%s.%s", name, sec);
   if (stat(filename, &sb) == -1)
    pp = h->base_man2;
   free(filename);
  }
 } else
  pp = h->base_includes;

 while ((p = strchr(pp, '%')) != ((void*)0)) {
  print_encode(h, pp, p, 1);
  if (man && p[1] == 'S') {
   if (sec == ((void*)0))
    print_byte(h, '1');
   else
    print_encode(h, sec, ((void*)0), 1);
  } else if ((man && p[1] == 'N') ||
      (man == 0 && p[1] == 'I'))
   print_encode(h, name, ((void*)0), 1);
  else
   print_encode(h, p, p + 2, 1);
  pp = p + 2;
 }
 if (*pp != '\0')
  print_encode(h, pp, ((void*)0), 1);
}
