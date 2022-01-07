
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;


 int L_MAXLENNUM ;
 int cast_uchar (char const) ;
 char* l_str2dloc (char const*,int *,int) ;
 int ltolower (int ) ;
 char lua_getlocaledecpoint () ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char* strpbrk (char const*,char*) ;

__attribute__((used)) static const char *l_str2d (const char *s, lua_Number *result) {
  const char *endptr;
  const char *pmode = strpbrk(s, ".xXnN");
  int mode = pmode ? ltolower(cast_uchar(*pmode)) : 0;
  if (mode == 'n')
    return ((void*)0);
  endptr = l_str2dloc(s, result, mode);
  if (endptr == ((void*)0)) {
    char buff[L_MAXLENNUM + 1];
    const char *pdot = strchr(s, '.');
    if (strlen(s) > L_MAXLENNUM || pdot == ((void*)0))
      return ((void*)0);
    strcpy(buff, s);
    buff[pdot - s] = lua_getlocaledecpoint();
    endptr = l_str2dloc(buff, result, mode);
    if (endptr != ((void*)0))
      endptr = s + (endptr - buff);
  }
  return endptr;
}
