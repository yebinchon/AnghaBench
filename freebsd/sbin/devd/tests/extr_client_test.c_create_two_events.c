
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mdname ;
typedef int FILE ;


 int ATF_REQUIRE (int ) ;
 int ATF_REQUIRE_EQ (int ,int ) ;
 char* fgets (char*,int,int *) ;
 int nitems (char*) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static void
create_two_events(void)
{
 FILE *create_stdout;
 FILE *destroy_stdout;
 char mdname[80];
 char destroy_cmd[95];
 char *error;

 create_stdout = popen("mdconfig -a -s 64 -t null", "r");
 ATF_REQUIRE(create_stdout != ((void*)0));
 error = fgets(mdname, sizeof(mdname), create_stdout);
 ATF_REQUIRE(error != ((void*)0));

 ATF_REQUIRE_EQ(0, pclose(create_stdout));

 snprintf(destroy_cmd, nitems(destroy_cmd), "mdconfig -d -u %s", mdname);
 destroy_stdout = popen(destroy_cmd, "r");
 ATF_REQUIRE(destroy_stdout != ((void*)0));

 ATF_REQUIRE_EQ(0, pclose(destroy_stdout));
}
