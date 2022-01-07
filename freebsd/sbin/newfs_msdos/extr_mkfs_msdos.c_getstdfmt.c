
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct bpb {int dummy; } ;
struct TYPE_3__ {struct bpb bpb; int name; } ;


 size_t nitems (TYPE_1__*) ;
 TYPE_1__* stdfmt ;
 scalar_t__ strcmp (char const*,int ) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
getstdfmt(const char *fmt, struct bpb *bpb)
{
    u_int x, i;

    x = nitems(stdfmt);
    for (i = 0; i < x && strcmp(fmt, stdfmt[i].name); i++);
    if (i == x) {
 warnx("%s: unknown standard format", fmt);
 return -1;
    }
    *bpb = stdfmt[i].bpb;
    return 0;
}
