
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int errx (int ,char*) ;

__attribute__((used)) static void
usage(void)
{

 errx(EX_USAGE, "[-dFhl] [-c config] [-P pidfile]");
}
