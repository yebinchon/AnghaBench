
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char CTRL (char) ;
 char* optarg ;

__attribute__((used)) static char
arg_to_char(void)
{
    return (char) ((optarg[0] == '^' && optarg[1] != '\0')
     ? ((optarg[1] == '?') ? '\177' : CTRL(optarg[1]))
     : optarg[0]);
}
