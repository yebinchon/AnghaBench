
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int ExitProgram (int ) ;
 int fprintf (int ,char*,char*) ;
 char* optarg ;
 int stderr ;
 long strtol (char*,char**,int ) ;

__attribute__((used)) static int
optarg_to_number(void)
{
    char *temp = 0;
    long value = strtol(optarg, &temp, 0);

    if (temp == 0 || temp == optarg || *temp != 0) {
 fprintf(stderr, "Expected a number, not \"%s\"\n", optarg);
 ExitProgram(EXIT_FAILURE);
    }
    return (int) value;
}
