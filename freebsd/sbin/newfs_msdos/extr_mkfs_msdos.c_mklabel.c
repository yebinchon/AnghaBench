
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 char toupper (int ) ;

__attribute__((used)) static void
mklabel(u_int8_t *dest, const char *src)
{
    int c, i;

    for (i = 0; i < 11; i++) {
 c = *src ? toupper(*src++) : ' ';
 *dest++ = !i && c == '\xe5' ? 5 : c;
    }
}
