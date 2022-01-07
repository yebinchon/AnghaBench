
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char* class_name ;
 int errx (int ,char*) ;
 char* gclass_name ;
 char* malloc (scalar_t__) ;
 scalar_t__ strlen (char*) ;
 char tolower (char) ;
 int toupper (char) ;

__attribute__((used)) static void
set_class_name(void)
{
 char *s1, *s2;

 s1 = class_name;
 for (; *s1 != '\0'; s1++)
  *s1 = tolower(*s1);
 gclass_name = malloc(strlen(class_name) + 1);
 if (gclass_name == ((void*)0))
  errx(EXIT_FAILURE, "No memory");
 s1 = gclass_name;
 s2 = class_name;
 for (; *s2 != '\0'; s2++)
  *s1++ = toupper(*s2);
 *s1 = '\0';
}
