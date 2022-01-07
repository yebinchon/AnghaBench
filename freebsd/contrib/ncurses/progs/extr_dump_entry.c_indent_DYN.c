
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DYNBUF ;


 int strncpy_DYN (int *,char*,size_t) ;

__attribute__((used)) static void
indent_DYN(DYNBUF * buffer, int level)
{
    int n;

    for (n = 0; n < level; n++)
 strncpy_DYN(buffer, "\t", (size_t) 1);
}
