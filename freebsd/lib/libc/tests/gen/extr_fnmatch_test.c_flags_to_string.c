
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int flagnames ;







 int memcpy (char*,char const*,int) ;
 int sprintf (char*,char*,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static const char *
flags_to_string(int flags)
{
 static const int flagvalues[] = { 130, 129,
  128, 131, 132, 0 };
 static const char flagnames[] = "FNM_NOESCAPE\0FNM_PATHNAME\0FNM_PERIOD\0FNM_LEADING_DIR\0FNM_CASEFOLD\0";
 static char result[sizeof(flagnames) + 3 * sizeof(int) + 2];
 char *p;
 size_t i, len;
 const char *fp;

 p = result;
 fp = flagnames;
 for (i = 0; flagvalues[i] != 0; i++) {
  len = strlen(fp);
  if (flags & flagvalues[i]) {
   if (p != result)
    *p++ = '|';
   memcpy(p, fp, len);
   p += len;
   flags &= ~flagvalues[i];
  }
  fp += len + 1;
 }
 if (p == result)
  memcpy(p, "0", 2);
 else if (flags != 0)
  sprintf(p, "%d", flags);
 else
  *p = '\0';
 return result;
}
