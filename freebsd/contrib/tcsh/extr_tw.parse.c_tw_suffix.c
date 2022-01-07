
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {char** vec; } ;
struct Strbuf {int s; } ;
typedef char Char ;


 int * Strchr (char*,char) ;
 char* Strrchr (int ,char) ;
 struct varent* adrof (char*) ;
 int isadirectory (char const*,char*) ;
 int strip (char*) ;
 char* tgetenv (char*) ;

__attribute__((used)) static Char
tw_suffix(int looking, struct Strbuf *word, const Char *exp_dir, Char *exp_name)
{
    Char *ptr;
    Char *dol;
    struct varent *vp;

    (void) strip(exp_name);

    switch (looking) {

    case 135:
 return '/';

    case 130:



 if ((vp = adrof(exp_name)) != ((void*)0) && vp->vec != ((void*)0)) {
     if ((ptr = vp->vec[0]) == ((void*)0) || *ptr == '\0' ||
  vp->vec[1] != ((void*)0))
  return ' ';
 }
 else if ((ptr = tgetenv(exp_name)) == ((void*)0) || *ptr == '\0')
     return ' ';

 if ((dol = Strrchr(word->s, '$')) != 0 &&
     dol[1] == '{' && Strchr(dol, '}') == ((void*)0))
   return '}';

 return isadirectory(exp_dir, ptr) ? '/' : ' ';


    case 141:
 return '/';

    case 143:
    case 139:
 return isadirectory(exp_dir, exp_name) ? '/' : ' ';

    case 145:
    case 129:
    case 128:
    case 134:
    case 140:
    case 131:
    case 144:
    case 136:
    case 133:
    case 137:
    case 142:
    case 132:
    case 138:
 return ' ';

    default:
 return '\0';
    }
}
