
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** allocarray (int) ;
 char* allocstr (char const*) ;
 int free (void*) ;
 int strcspn (char const*,char const*) ;

__attribute__((used)) static const char **
arrayize(const char *str, const char *chars, int *size)
{
    int i;
    char *ptr;
    const char *cptr;
    const char **res = ((void*)0);


    for (i = 0, cptr = str; *cptr; i++) {
 int count = strcspn(cptr, chars);
 cptr += count;
 if (*cptr)
     ++cptr;
    }


    if ((ptr = allocstr(str)) != ((void*)0)) {
 if ((res = allocarray(++i)) == ((void*)0))
     free((void *)(uintptr_t)(const void *)str);
 else {

     i = 0;
     while (*ptr) {
  int count = strcspn(ptr, chars);
  res[i++] = ptr;
  ptr += count;
  if (*ptr)
      *ptr++ = '\0';
     }
     res[i] = ((void*)0);
 }
    }

    if (size)
 *size = i;

    return res;
}
