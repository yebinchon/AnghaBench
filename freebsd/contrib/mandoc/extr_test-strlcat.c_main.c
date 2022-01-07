
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int strlcat (char*,char*,int) ;

int
main(void)
{
 char buf[3] = "a";
 return ! (strlcat(buf, "b", sizeof(buf)) == 2 &&
     buf[0] == 'a' && buf[1] == 'b' && buf[2] == '\0');
}
