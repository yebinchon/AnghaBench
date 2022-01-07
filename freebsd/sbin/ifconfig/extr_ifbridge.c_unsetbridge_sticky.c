
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int IFBIF_STICKY ;
 int do_bridgeflag (int,char const*,int ,int ) ;

__attribute__((used)) static void
unsetbridge_sticky(const char *val, int d, int s, const struct afswtch *afp)
{

 do_bridgeflag(s, val, IFBIF_STICKY, 0);
}
