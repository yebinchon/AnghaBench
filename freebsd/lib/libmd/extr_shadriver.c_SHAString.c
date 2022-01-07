
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHA ;
 char* SHA_Data (char*,int ,char*) ;
 int printf (char*,int,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
SHAString(char *string)
{
 char buf[2*64 + 1];

 printf("SHA-%d (\"%s\") = %s\n",
        SHA, string, SHA_Data(string, strlen(string), buf));
}
