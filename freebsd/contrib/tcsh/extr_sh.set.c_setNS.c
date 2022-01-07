
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int STRNULL ;
 int VAR_READWRITE ;
 int setcopy (int const*,int ,int ) ;

void
setNS(const Char *varName)
{
    setcopy(varName, STRNULL, VAR_READWRITE);
}
