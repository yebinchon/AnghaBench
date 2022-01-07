
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr_realm {char* realm; int leading_space; int leading_slash; int trailing_dot; } ;


 struct tr_realm* calloc (int,int) ;
 int free (char*) ;

__attribute__((used)) static struct tr_realm *
make_realm(char *realm)
{
    struct tr_realm *r;
    char *p, *q;
    int quote = 0;
    r = calloc(1, sizeof(*r));
    if(r == ((void*)0)){
 free(realm);
 return ((void*)0);
    }
    r->realm = realm;
    for(p = q = r->realm; *p; p++){
 if(p == r->realm && *p == ' '){
     r->leading_space = 1;
     continue;
 }
 if(q == r->realm && *p == '/')
     r->leading_slash = 1;
 if(quote){
     *q++ = *p;
     quote = 0;
     continue;
 }
 if(*p == '\\'){
     quote = 1;
     continue;
 }
 if(p[0] == '.' && p[1] == '\0')
     r->trailing_dot = 1;
 *q++ = *p;
    }
    *q = '\0';
    return r;
}
