
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {int dummy; } ;


 int passthru (struct cmd const*,int,char**) ;

__attribute__((used)) static void
io_passthru(const struct cmd *nf, int argc, char *argv[])
{

 passthru(nf, argc, argv);
}
