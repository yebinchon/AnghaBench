
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileptr {char* s; int * f; } ;
typedef size_t ssize_t ;


 char* fgets (char*,size_t,int *) ;
 int memcpy (char*,char const*,size_t) ;
 size_t min (size_t,size_t) ;
 int strcspn (char*,char*) ;

__attribute__((used)) static char *
config_fgets(char *str, size_t len, struct fileptr *ptr)
{


    if(ptr->f != ((void*)0))
 return fgets(str, len, ptr->f);
    else {

 const char *p;
 ssize_t l;
 if(*ptr->s == '\0')
     return ((void*)0);
 p = ptr->s + strcspn(ptr->s, "\n");
 if(*p == '\n')
     p++;
 l = min(len, (size_t)(p - ptr->s));
 if(len > 0) {
     memcpy(str, ptr->s, l);
     str[l] = '\0';
 }
 ptr->s = p;
 return str;
    }
}
