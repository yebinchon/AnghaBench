
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int setifdescr (char*,int ,int,int ) ;

__attribute__((used)) static void
unsetifdescr(const char *val, int value, int s, const struct afswtch *afp)
{

 setifdescr("", 0, s, 0);
}
