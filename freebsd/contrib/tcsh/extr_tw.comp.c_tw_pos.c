
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 int getn (char*) ;

__attribute__((used)) static int
tw_pos(Char *ran, int wno)
{
    Char *p;

    if (ran[0] == '*' && ran[1] == '\0')
 return 1;

    for (p = ran; *p && *p != '-'; p++)
 continue;

    if (*p == '\0')
 return wno == getn(ran);

    if (ran == p)
 return wno <= getn(&ran[1]);
    *p++ = '\0';

    if (*p == '\0')
 return getn(ran) <= wno;
    else
 return (getn(ran) <= wno) && (wno <= getn(p));
}
