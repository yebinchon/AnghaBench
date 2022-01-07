
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HEXKEYBYTES ;

__attribute__((used)) static void
adjust(char keyout[HEXKEYBYTES+1], char *keyin)
{
        char *p;
        char *s;

        for (p = keyin; *p; p++)
                ;
        for (s = keyout + HEXKEYBYTES; p >= keyin; p--, s--) {
                *s = *p;
        }
        while (s >= keyout) {
                *s-- = '0';
        }
}
