
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int errbuf ;


 int isalnum (char) ;
 int isalpha (char) ;
 int isdigit (char) ;
 int snprintf (char*,int,char*,char*) ;
 int strlcpy (char*,char*,int) ;
 size_t strlen (char*) ;
 char tolower (char) ;

int
valid_domain(char *name, int makelower, const char **errstr)
{
 size_t i, l = strlen(name);
 u_char c, last = '\0';
 static char errbuf[256];

 if (l == 0) {
  strlcpy(errbuf, "empty domain name", sizeof(errbuf));
  goto bad;
 }
 if (!isalpha((u_char)name[0]) && !isdigit((u_char)name[0])) {
  snprintf(errbuf, sizeof(errbuf), "domain name \"%.100s\" "
      "starts with invalid character", name);
  goto bad;
 }
 for (i = 0; i < l; i++) {
  c = tolower((u_char)name[i]);
  if (makelower)
   name[i] = (char)c;
  if (last == '.' && c == '.') {
   snprintf(errbuf, sizeof(errbuf), "domain name "
       "\"%.100s\" contains consecutive separators", name);
   goto bad;
  }
  if (c != '.' && c != '-' && !isalnum(c) &&
      c != '_') {
   snprintf(errbuf, sizeof(errbuf), "domain name "
       "\"%.100s\" contains invalid characters", name);
   goto bad;
  }
  last = c;
 }
 if (name[l - 1] == '.')
  name[l - 1] = '\0';
 if (errstr != ((void*)0))
  *errstr = ((void*)0);
 return 1;
bad:
 if (errstr != ((void*)0))
  *errstr = errbuf;
 return 0;
}
