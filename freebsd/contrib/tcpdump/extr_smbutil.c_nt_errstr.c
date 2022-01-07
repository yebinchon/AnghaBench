
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int ret ;
struct TYPE_2__ {char const* name; scalar_t__ code; } ;


 TYPE_1__* nt_errors ;
 int snprintf (char*,int,char*,scalar_t__) ;

const char *
nt_errstr(uint32_t err)
{
    static char ret[128];
    int i;

    ret[0] = 0;

    for (i = 0; nt_errors[i].name; i++) {
 if (err == nt_errors[i].code)
     return nt_errors[i].name;
    }

    snprintf(ret, sizeof(ret), "0x%08x", err);
    return ret;
}
