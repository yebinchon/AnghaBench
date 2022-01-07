
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {scalar_t__ l_uf; scalar_t__ l_ui; } ;
typedef TYPE_1__ l_fp ;
typedef int buffer ;


 int INSIST (int) ;
 int ctl_putunqstr (char const*,char*,int) ;
 int snprintf (char*,int,char*,int ,int ) ;

__attribute__((used)) static void
ctl_putts(
 const char *tag,
 l_fp *ts
 )
{
 char buffer[24];
 int rc;

 rc = snprintf(buffer, sizeof(buffer),
        "0x%08lx.%08lx",
        (u_long)ts->l_ui, (u_long)ts->l_uf);
 INSIST(rc >= 0 && (size_t)rc < sizeof(buffer));
 ctl_putunqstr(tag, buffer, rc);
}
