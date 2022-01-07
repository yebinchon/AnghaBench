
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 scalar_t__ explicit_prefix ;
 int setifprefixlen (char*,int ,int,struct afswtch const*) ;

__attribute__((used)) static void
in6_postproc(int s, const struct afswtch *afp)
{
 if (explicit_prefix == 0) {



  setifprefixlen("64", 0, s, afp);

 }
}
