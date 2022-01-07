
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
_text_is_nfs4_entry(const char *entry)
{
 int count = 0;

 assert(strlen(entry) > 0);

 while (*entry != '\0') {
  if (*entry == ':' || *entry == '@')
   count++;
  entry++;
 }

 if (count <= 2)
  return (0);

 return (1);
}
