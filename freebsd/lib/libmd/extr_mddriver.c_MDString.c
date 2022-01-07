
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MD ;
 char* MDData (char*,int ,char*) ;
 int printf (char*,int,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
MDString(char *string)
{
 char buf[33];

 printf("MD%d (\"%s\") = %s\n",
        MD, string, MDData(string, strlen(string), buf));
}
