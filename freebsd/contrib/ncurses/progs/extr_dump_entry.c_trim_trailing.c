
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int used; char* text; } ;


 TYPE_1__ outbuf ;

__attribute__((used)) static void
trim_trailing(void)
{
    while (outbuf.used > 0 && outbuf.text[outbuf.used - 1] == ' ')
 outbuf.text[--outbuf.used] = '\0';
}
