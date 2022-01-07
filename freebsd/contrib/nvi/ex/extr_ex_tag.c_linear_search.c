
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIP_PAST_NEWLINE (char*,char*) ;
 int compare (char*,char*,char*) ;

__attribute__((used)) static char *
linear_search(char *string, char *front, char *back, long tl)
{
 char *end;
 while (front < back) {
  end = tl && back-front > tl ? front+tl : back;
  switch (compare(string, front, end)) {
  case 130:
   return (front);
  case 128:
   return (((void*)0));
  case 129:
   break;
  }
  SKIP_PAST_NEWLINE(front, back);
 }
 return (((void*)0));
}
