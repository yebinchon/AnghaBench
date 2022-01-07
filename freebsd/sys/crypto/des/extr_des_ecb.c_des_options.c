
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DES_LONG ;


 int sprintf (char*,char*,char const*,char const*,char const*,char const*) ;

char *des_options(void)
        {
        static int init=1;
        static char buf[32];

        if (init)
                {
                const char *ptr,*unroll,*risc,*size;




                ptr="idx";
                risc="cisc";




                unroll="4";

                if (sizeof(DES_LONG) != sizeof(long))
                        size="int";
                else
                        size="long";
                sprintf(buf,"des(%s,%s,%s,%s)",ptr,risc,unroll,size);
                init=0;
                }
        return(buf);
}
