
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int printf (char*,...) ;

__attribute__((used)) static void
dump_vector(const char * msg, uint32_t * v, size_t len)
{
    size_t i;

    printf("%s: (%d) ", msg, (int)len);
    for (i=0; i < len; i++) {
 printf("%s%x", (i > 0? " ":""), v[i]);
    }
    printf("\n");
}
