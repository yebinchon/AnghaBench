
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; char* pw_name; } ;


 char* malloc (int) ;
 int memmove (char*,char*,int) ;
 char* strcpy (char*,char const*) ;
 int strcspn (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
substvar(const char * var, const struct passwd * pwd, int hlen, int pch, int nlen)
{
    char *np = ((void*)0);

    if (var != ((void*)0)) {
 int tildes = 0;
 int dollas = 0;
 char *p;
 const char *q;

 if (pwd != ((void*)0)) {
     for (q = var; *q != '\0'; ++q) {
  tildes += (*q == '~');
  dollas += (*q == '$');
     }
 }

 np = malloc(strlen(var) + (dollas * nlen)
      - dollas + (tildes * (pch+hlen))
      - tildes + 1);

 if (np != ((void*)0)) {
     p = strcpy(np, var);

     if (pwd != ((void*)0)) {




  while (*(p += strcspn(p, "~$")) != '\0') {
      int l = strlen(p);

      if (p > np && *(p-1) == '\\')
   memmove(p - 1, p, l + 1);
      else if (*p == '~') {
   int v = pch && *(p+1) != '/';
   memmove(p + hlen + v, p + 1, l);
   memmove(p, pwd->pw_dir, hlen);
   if (v)
       p[hlen] = '/';
   p += hlen + v;
      }
      else {
   memmove(p + nlen, p + 1, l);
   memmove(p, pwd->pw_name, nlen);
   p += nlen;
      }
  }
     }
 }
    }

    return (np);
}
