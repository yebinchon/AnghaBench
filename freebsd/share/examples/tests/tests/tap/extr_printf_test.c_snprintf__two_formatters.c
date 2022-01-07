
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int fail (char*,...) ;
 int pass () ;
 int skip (int) ;
 scalar_t__ snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
snprintf__two_formatters(void)
{
 char buffer[128];

 if (snprintf(buffer, sizeof(buffer), "%s, %s!", "Hello",
     "tests") <= 0) {
  fail("snprintf with two formatters failed");
  skip(1);
 } else {
  pass();
  if (strcmp(buffer, "Hello, tests!") != 0)
   fail("Bad formatting: got %s", buffer);
  else
   pass();
 }
}
