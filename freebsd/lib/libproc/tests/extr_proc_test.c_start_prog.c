
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_handle {int dummy; } ;
struct atf_tc {int dummy; } ;


 int ATF_REQUIRE (int ) ;
 int ATF_REQUIRE_EQ_MSG (int,int ,char*,int ) ;
 int asprintf (char**,char*,int ,int ) ;
 int atf_tc_get_config_var (struct atf_tc const*,char*) ;
 int free (char*) ;
 int proc_create (char*,char**,int *,int *,int *,struct proc_handle**) ;
 char* strdup (char*) ;
 int target_prog_file ;

__attribute__((used)) static struct proc_handle *
start_prog(const struct atf_tc *tc, bool sig)
{
 char *argv[3];
 struct proc_handle *phdl;
 int error;

 asprintf(&argv[0], "%s/%s", atf_tc_get_config_var(tc, "srcdir"),
     target_prog_file);
 ATF_REQUIRE(argv[0] != ((void*)0));

 if (sig) {
  argv[1] = strdup("-s");
  argv[2] = ((void*)0);
 } else {
  argv[1] = ((void*)0);
 }

 error = proc_create(argv[0], argv, ((void*)0), ((void*)0), ((void*)0), &phdl);
 ATF_REQUIRE_EQ_MSG(error, 0, "failed to run '%s'", target_prog_file);
 ATF_REQUIRE(phdl != ((void*)0));

 free(argv[0]);
 free(argv[1]);

 return (phdl);
}
