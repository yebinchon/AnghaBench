
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAUSE_CH ;
 int free (char*) ;
 void* getdigit (unsigned char**,int,int) ;
 void* malloc (int) ;
 int * strcpy (char*,char*) ;
 int strlen (char*) ;
 unsigned char* strrchr (char*,char) ;
 char* strtok (int *,char*) ;

__attribute__((used)) static char **
read_chat(char **chatstr)
{
 char *str = *chatstr;
 char **res = ((void*)0);

 if (str != ((void*)0)) {
  char *tmp = ((void*)0);
  int l;

  if ((l=strlen(str)) > 0 && (tmp=malloc(l + 1)) != ((void*)0) &&
      (res=malloc(((l + 1) / 2 + 1) * sizeof(char *))) != ((void*)0)) {
   static char ws[] = " \t";
   char * p;

   for (l = 0, p = strtok(strcpy(tmp, str), ws);
        p != ((void*)0);
        p = strtok(((void*)0), ws))
   {
    unsigned char *q, *r;


    for (q = r = (unsigned char *)p; *r; ++q)
    {
     if (*q == '\\')
     {

      switch (*++q)
      {
      case 'a':
       *r++ = '\a';
       break;
      case 'r':
       *r++ = '\r';
       break;
      case 'n':
       *r++ = '\n';
       break;
      case 'f':
       *r++ = '\f';
       break;
      case 'b':
       *r++ = '\b';
       break;
      case 'e':
       *r++ = 27;
       break;
      case 't':
       *r++ = '\t';
       break;
      case 'p':
       *r++ = PAUSE_CH;
       break;
      case 's':
      case 'S':
       *r++ = ' ';
       break;
      case 'x':
       ++q;
       *r++ = getdigit(&q, 16, 2);
       --q;
       break;
      case '0':
       ++q;
       *r++ = getdigit(&q, 8, 3);
       --q;
       break;
      default:
       *r++ = *q;
       break;
      case 0:
       --q;
       break;
      }
     } else {

      *r++ = *q;
     }
    }



    if (*p == '"' || *p == '\'') {
     q = strrchr(p+1, *p);
     if (q != ((void*)0) && *q == *p && q[1] == '\0') {
      *q = '\0';
      p++;
     }
    }

    res[l++] = p;
   }
   res[l] = ((void*)0);
   *chatstr = tmp;
   return res;
  }
  free(tmp);
 }
 return res;
}
