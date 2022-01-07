
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 int ERR_AMBIG ;
 int ERR_NAME ;



 size_t Strlen (char*) ;
 char* Strsave (int ) ;
 int TRIM ;
 int blkfree (char**) ;
 int setname (int ) ;
 int short2str (char*) ;
 int stderror (int) ;
 int strip (char*) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static Char *
handleone(Char *str, Char **vl, int action)
{
    size_t chars;
    Char **t, *p, *strp;

    switch (action) {
    case 129:
 setname(short2str(str));
 blkfree(vl);
 stderror(ERR_NAME | ERR_AMBIG);
 break;
    case 130:
 chars = 0;
 for (t = vl; (p = *t++) != ((void*)0); chars++)
     chars += Strlen(p);
 str = xmalloc(chars * sizeof(Char));
 for (t = vl, strp = str; (p = *t++) != ((void*)0); chars++) {
     while (*p)
   *strp++ = *p++ & TRIM;
     *strp++ = ' ';
 }
 *--strp = '\0';
 blkfree(vl);
 break;
    case 128:
 str = Strsave(strip(*vl));
 blkfree(vl);
 break;
    default:
 break;
    }
    return (str);
}
