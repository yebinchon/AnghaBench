
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int domediaopt (char const*,int,int) ;

__attribute__((used)) static void
unsetmediaopt(const char *val, int d, int s, const struct afswtch *afp)
{

 domediaopt(val, 1, s);
}
