
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 scalar_t__ strchr (char*,int) ;

__attribute__((used)) static int
oklabel(const char *src)
{
    int c, i;

    for (i = 0; i <= 11; i++) {
 c = (u_char)*src++;
 if (c < ' ' + !i || strchr("\"*+,./:;<=>?[\\]|", c))
     break;
    }
    return i && !c;
}
