
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct limits {scalar_t__ limconst; int limname; } ;
typedef int Char ;


 int ERR_AMBIG ;
 int ERR_LIMIT ;
 int ERR_NAME ;
 struct limits* limits ;
 scalar_t__ prefix (int *,int ) ;
 int stderror (int) ;
 int str2short (int ) ;

__attribute__((used)) static struct limits *
findlim(Char *cp)
{
    struct limits *lp, *res;

    res = ((void*)0);
    for (lp = limits; lp->limconst >= 0; lp++)
 if (prefix(cp, str2short(lp->limname))) {
     if (res)
  stderror(ERR_NAME | ERR_AMBIG);
     res = lp;
 }
    if (res)
 return (res);
    stderror(ERR_NAME | ERR_LIMIT);

    return (0);
}
