
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UChar (int) ;
 int* bufptr ;
 int isspace (int ) ;
 size_t strlen (int*) ;

__attribute__((used)) static int
last_char(int from_end)
{
    size_t len = strlen(bufptr);
    int result = 0;

    while (len--) {
 if (!isspace(UChar(bufptr[len]))) {
     if (from_end < (int) len)
  result = bufptr[(int) len - from_end];
     break;
 }
    }
    return result;
}
