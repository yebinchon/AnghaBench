
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKEIN ;
 char* SKEIN_Data (char*,int ,char*) ;
 int printf (char*,int,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
SKEINString(char *string)
{
 char buf[2*128 + 1];

 printf("SKEIN%d (\"%s\") = %s\n",
        SKEIN, string, SKEIN_Data(string, strlen(string), buf));
}
