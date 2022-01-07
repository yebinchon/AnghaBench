
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int je_malloc_message (int *,char const*) ;
 int wrtmessage (int *,char const*) ;

void
malloc_write(const char *s) {
 if (je_malloc_message != ((void*)0)) {
  je_malloc_message(((void*)0), s);
 } else {
  wrtmessage(((void*)0), s);
 }
}
