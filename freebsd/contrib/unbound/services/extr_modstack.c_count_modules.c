
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static int
count_modules(const char* s)
{
        int num = 0;
        if(!s)
                return 0;
        while(*s) {

                while(*s && isspace((unsigned char)*s))
                        s++;
                if(*s && !isspace((unsigned char)*s)) {

                        num++;
                        while(*s && !isspace((unsigned char)*s))
                                s++;
                }
        }
        return num;
}
