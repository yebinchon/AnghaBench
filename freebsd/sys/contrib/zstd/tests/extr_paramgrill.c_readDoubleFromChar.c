
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double readDoubleFromChar(const char** stringPtr)
{
    double result = 0, divide = 10;
    while ((**stringPtr >='0') && (**stringPtr <='9')) {
        result *= 10, result += **stringPtr - '0', (*stringPtr)++ ;
    }
    if(**stringPtr!='.') {
        return result;
    }
    (*stringPtr)++;
    while ((**stringPtr >='0') && (**stringPtr <='9')) {
        result += (double)(**stringPtr - '0') / divide, divide *= 10, (*stringPtr)++ ;
    }
    return result;
}
