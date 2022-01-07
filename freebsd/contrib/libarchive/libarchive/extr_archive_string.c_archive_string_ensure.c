
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string {char* s; size_t buffer_length; } ;


 int ENOMEM ;
 int archive_string_free (struct archive_string*) ;
 int errno ;
 scalar_t__ realloc (char*,size_t) ;

struct archive_string *
archive_string_ensure(struct archive_string *as, size_t s)
{
 char *p;
 size_t new_length;


 if (as->s && (s <= as->buffer_length))
  return (as);
 if (as->buffer_length < 32)

  new_length = 32;
 else if (as->buffer_length < 8192)

  new_length = as->buffer_length + as->buffer_length;
 else {

  new_length = as->buffer_length + as->buffer_length / 4;

  if (new_length < as->buffer_length) {

   archive_string_free(as);
   errno = ENOMEM;
   return (((void*)0));
  }
 }





 if (new_length < s)
  new_length = s;

 p = (char *)realloc(as->s, new_length);
 if (p == ((void*)0)) {

  archive_string_free(as);
  errno = ENOMEM;
  return (((void*)0));
 }

 as->s = p;
 as->buffer_length = new_length;
 return (as);
}
