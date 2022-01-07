
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;


 int ex_puts (int *,char*) ;

int
ex_help(SCR *sp, EXCMD *cmdp)
{
 (void)ex_puts(sp,
     "To see the list of vi commands, enter \":viusage<CR>\"\n");
 (void)ex_puts(sp,
     "To see the list of ex commands, enter \":exusage<CR>\"\n");
 (void)ex_puts(sp,
     "For an ex command usage statement enter \":exusage [cmd]<CR>\"\n");
 (void)ex_puts(sp,
     "For a vi key usage statement enter \":viusage [key]<CR>\"\n");
 (void)ex_puts(sp, "To exit, enter \":q!\"\n");
 return (0);
}
