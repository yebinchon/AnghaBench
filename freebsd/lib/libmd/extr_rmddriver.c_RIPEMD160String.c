
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* RIPEMD160_Data (char*,int ,char*) ;
 int printf (char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
RIPEMD160String(char *string)
{
 char buf[2*20 + 1];

 printf("RIPEMD160 (\"%s\") = %s\n",
        string, RIPEMD160_Data(string, strlen(string), buf));
}
