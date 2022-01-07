
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int C_CLASS_OTHER ;
 int C_CLASS_WHITE ;
 int C_CLASS_WORD ;
 scalar_t__ Isspace (int ) ;
 scalar_t__ isword (int ) ;

__attribute__((used)) static int
c_to_class(Char ch)
{
    if (Isspace(ch))
        return C_CLASS_WHITE;

    if (isword(ch))
        return C_CLASS_WORD;

    return C_CLASS_OTHER;
}
