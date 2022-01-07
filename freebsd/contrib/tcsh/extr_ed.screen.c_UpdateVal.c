
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char* Itoa (int,int ,int ) ;
 int Strcat (char*,char*) ;
 char* Strchr (char*,char) ;
 int Strcpy (char*,char*) ;
 int Strlen (char const*) ;
 int Strncpy (char*,char*,size_t) ;
 char* Strstr (char*,char const*) ;
 int xfree (char*) ;

__attribute__((used)) static int
UpdateVal(const Char *tag, int value, Char *termcap, Char *backup)
{
    Char *ptr, *p;
    if ((ptr = Strstr(termcap, tag)) == ((void*)0)) {
 (void)Strcpy(backup, termcap);
 return 0;
    } else {
 size_t len = (ptr - termcap) + Strlen(tag);
 (void)Strncpy(backup, termcap, len);
 backup[len] = '\0';
 p = Itoa(value, 0, 0);
 (void) Strcat(backup + len, p);
 xfree(p);
 ptr = Strchr(ptr, ':');
 if (ptr)
     (void) Strcat(backup, ptr);
 return 1;
    }
}
