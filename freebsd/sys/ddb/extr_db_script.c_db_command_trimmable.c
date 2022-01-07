
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
db_command_trimmable(char ch)
{

 switch (ch) {
 case ' ':
 case '\t':
 case '\n':
 case '\r':
  return (1);

 default:
  return (0);
 }
}
