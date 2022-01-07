
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* strchr ;


 int keypad_final (char const*) ;

__attribute__((used)) static long
keypad_index(const char *string)
{
    char *test;
    const char *list = "PQRSwxymtuvlqrsPpn";
    int ch;
    long result = -1;

    if ((ch = keypad_final(string)) != '\0') {
 test = (strchr) (list, ch);
 if (test != 0)
     result = (long) (test - list);
    }
    return result;
}
