
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (unsigned char) ;

__attribute__((used)) static void
gen_name(char *str)
{
    char *p;
    for(p = str; *p != '\0'; p++)
 if(!isalnum((unsigned char)*p))
     *p = '_';
}
