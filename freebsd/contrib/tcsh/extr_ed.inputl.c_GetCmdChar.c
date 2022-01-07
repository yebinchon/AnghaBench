
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t wint_t ;
typedef size_t Char ;


 size_t CHAR ;
 int* CurrentKeyMap ;
 int F_INSERT ;
 size_t NT_NUM_KEYS ;

int
GetCmdChar(Char ch)
{

    wint_t c = ch & CHAR;



    return c < NT_NUM_KEYS ? CurrentKeyMap[c] : F_INSERT;
}
