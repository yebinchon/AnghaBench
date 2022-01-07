
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pager_output (char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
help_emitsummary(char *topic, char *subtopic, char *desc)
{
 int i;

 pager_output("    ");
 pager_output(topic);
 i = strlen(topic);
 if (subtopic != ((void*)0)) {
  pager_output(" ");
  pager_output(subtopic);
  i += strlen(subtopic) + 1;
 }
 if (desc != ((void*)0)) {
  do {
   pager_output(" ");
  } while (i++ < 30);
  pager_output(desc);
 }
 return (pager_output("\n"));
}
