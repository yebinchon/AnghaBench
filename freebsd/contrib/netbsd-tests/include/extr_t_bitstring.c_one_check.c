
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int command ;
typedef int atf_tc_t ;
typedef int FILE ;


 int ATF_REQUIRE (int ) ;
 scalar_t__ EXIT_SUCCESS ;
 int atf_tc_fail (char*) ;
 char* atf_tc_get_config_var (int const*,char*) ;
 int calculate_data (int *,int const) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int snprintf (char*,int,char*,char*,int const) ;
 scalar_t__ system (char*) ;

__attribute__((used)) static void
one_check(const atf_tc_t *tc, const int test_length)
{
 FILE *out;
 char command[1024];

 ATF_REQUIRE((out = fopen("out", "w")) != ((void*)0));
 calculate_data(out, test_length);
 fclose(out);





 snprintf(command, sizeof(command), "diff -u %s/d_bitstring_%d.out out",
     atf_tc_get_config_var(tc, "srcdir"), test_length);
 if (system(command) != EXIT_SUCCESS)
  atf_tc_fail("Test failed; see output for details");
}
