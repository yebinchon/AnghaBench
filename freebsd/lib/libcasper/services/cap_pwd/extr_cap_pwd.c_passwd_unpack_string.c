
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int ERANGE ;
 char* nvlist_get_string (int const*,char const*) ;
 size_t strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static int
passwd_unpack_string(const nvlist_t *nvl, const char *fieldname, char **fieldp,
    char **bufferp, size_t *bufsizep)
{
 const char *str;
 size_t len;

 str = nvlist_get_string(nvl, fieldname);
 len = strlcpy(*bufferp, str, *bufsizep);
 if (len >= *bufsizep)
  return (ERANGE);
 *fieldp = *bufferp;
 *bufferp += len + 1;
 *bufsizep -= len + 1;

 return (0);
}
