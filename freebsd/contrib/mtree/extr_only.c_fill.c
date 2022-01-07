
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int hash_find (char*,int *) ;
 int hash_insert (char*,int ) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
fill(char *str)
{
 uint32_t h;
 char *ptr = strrchr(str, '/');

 if (ptr == ((void*)0))
  return;

 *ptr = '\0';
 if (!hash_find(str, &h)) {
  hash_insert(str, h);
  fill(str);
 }
 *ptr = '/';
}
