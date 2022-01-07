
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execute_script (char**) ;

__attribute__((used)) static void
replace_init(char *path)
{
 char *argv[3];
 char sh[] = "sh";

 argv[0] = sh;
 argv[1] = path;
 argv[2] = ((void*)0);

 execute_script(argv);
}
