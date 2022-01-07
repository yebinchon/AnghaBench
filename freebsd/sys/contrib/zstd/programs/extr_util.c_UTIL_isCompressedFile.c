
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* UTIL_getFileExtension (char const*) ;
 int strcmp (char const*,char const*) ;

int UTIL_isCompressedFile(const char *inputName, const char *extensionList[])
{
  const char* ext = UTIL_getFileExtension(inputName);
  while(*extensionList!=((void*)0))
  {
    const int isCompressedExtension = strcmp(ext,*extensionList);
    if(isCompressedExtension==0)
      return 1;
    ++extensionList;
  }
   return 0;
}
