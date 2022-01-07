
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __Char ;
typedef int Char ;


 int const CHAR ;
 int LCHAR (int ) ;
 int MB_LEN_MAX ;
 size_t one_mbtowc (int*,char*,size_t) ;

__attribute__((used)) static size_t
One_Char_mbtowc(__Char *pwc, const Char *s, size_t n)
{
    *pwc = *s & CHAR;
    return 1;

}
