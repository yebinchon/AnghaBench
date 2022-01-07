
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GREATER ;
 int SKIP_PAST_NEWLINE (char*,char*) ;
 scalar_t__ compare (char*,char*,char*) ;

__attribute__((used)) static char *
binary_search(char *string, char *front, char *back)
{
 char *p;

 p = front + (back - front) / 2;
 SKIP_PAST_NEWLINE(p, back);

 while (p != back) {
  if (compare(string, p, back) == GREATER)
   front = p;
  else
   back = p;
  p = front + (back - front) / 2;
  SKIP_PAST_NEWLINE(p, back);
 }
 return (front);
}
