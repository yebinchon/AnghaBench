
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ambiguous ;

int
Ambiguous(char **s)
{
 return(s == &ambiguous);
}
