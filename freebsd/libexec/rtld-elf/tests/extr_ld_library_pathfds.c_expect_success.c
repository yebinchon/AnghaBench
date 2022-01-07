
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int try_to_run (int,int ,char* const*,char*,char*) ;

__attribute__((used)) static void
expect_success(int binary, char *pathfds)
{
 char * const env[] = { pathfds, ((void*)0) };
 try_to_run(binary, 0, env, "the hypotenuse of 3 and 4 is 5\n", "");
}
