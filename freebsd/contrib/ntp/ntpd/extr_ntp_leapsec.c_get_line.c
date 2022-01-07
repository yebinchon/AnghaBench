
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int (* leapsec_reader ) (void*) ;


 int EOF ;
 scalar_t__ isspace (int ) ;
 int stub1 (void*) ;

__attribute__((used)) static char *
get_line(
 leapsec_reader func,
 void * farg,
 char * buff,
 size_t size)
{
 int ch;
 char *ptr;


 if (buff == ((void*)0) || size == 0)
  return ((void*)0);

 ptr = buff;
 while (EOF != (ch = (*func)(farg)) && '\n' != ch)
  if (size > 1) {
   size--;
   *ptr++ = (char)ch;
  }

 while (ptr != buff && isspace((u_char)ptr[-1]))
  ptr--;
 *ptr = '\0';
 return (ptr == buff && ch == EOF) ? ((void*)0) : buff;
}
