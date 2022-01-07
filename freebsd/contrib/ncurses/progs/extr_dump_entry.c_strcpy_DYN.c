
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ used; } ;
typedef TYPE_1__ DYNBUF ;


 int strlen (char const*) ;
 int strncpy_DYN (TYPE_1__*,char const*,int ) ;

__attribute__((used)) static void
strcpy_DYN(DYNBUF * dst, const char *src)
{
    if (src == 0) {
 dst->used = 0;
 strcpy_DYN(dst, "");
    } else {
 strncpy_DYN(dst, src, strlen(src));
    }
}
