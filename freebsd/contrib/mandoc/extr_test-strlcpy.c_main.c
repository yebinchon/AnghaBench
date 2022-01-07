
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int strlcpy (char*,char*,int) ;

int
main(void)
{
 char buf[2] = "";
 return ! (strlcpy(buf, "a", sizeof(buf)) == 1 &&
     buf[0] == 'a' && buf[1] == '\0');
}
