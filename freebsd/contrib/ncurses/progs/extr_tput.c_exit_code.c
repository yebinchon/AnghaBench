
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
exit_code(int token, int value)
{
    int result = 99;

    switch (token) {
    case 130:
 result = !value;
 break;
    case 129:
 result = 0;
 break;
    case 128:
 result = value;
 break;
    }
    return result;
}
