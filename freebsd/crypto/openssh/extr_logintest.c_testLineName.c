
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strip ;
typedef int full ;
typedef int abbrev ;


 int line_abbrevname (char*,char*,int) ;
 int line_fullname (char*,char*,int) ;
 int line_stripname (char*,char*,int) ;
 int memset (char*,char,int) ;
 int printf (char*,char*,char*,char*,char*) ;

void
testLineName(char *line)
{


 char full[17], strip[9], abbrev[5];

 memset(full, '\0', sizeof(full));
 memset(strip, '\0', sizeof(strip));
 memset(abbrev, '\0', sizeof(abbrev));

 line_fullname(full, line, sizeof(full)-1);
 line_stripname(strip, full, sizeof(strip)-1);
 line_abbrevname(abbrev, full, sizeof(abbrev)-1);
 printf("%s: %s, %s, %s\n", line, full, strip, abbrev);

}
