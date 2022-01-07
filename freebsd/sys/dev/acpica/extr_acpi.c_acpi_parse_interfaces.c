
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_interface {char** data; int num; } ;


 int M_TEMP ;
 int M_WAITOK ;
 int free (char*,int ) ;
 scalar_t__ isspace (char) ;
 char** malloc (int,int ,int ) ;
 char* strdup (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int
acpi_parse_interfaces(char *str, struct acpi_interface *iface)
{
 char *p;
 size_t len;
 int i, j;

 p = str;
 while (isspace(*p) || *p == ',')
  p++;
 len = strlen(p);
 if (len == 0)
  return (0);
 p = strdup(p, M_TEMP);
 for (i = 0; i < len; i++)
  if (p[i] == ',')
   p[i] = '\0';
 i = j = 0;
 while (i < len)
  if (isspace(p[i]) || p[i] == '\0')
   i++;
  else {
   i += strlen(p + i) + 1;
   j++;
  }
 if (j == 0) {
  free(p, M_TEMP);
  return (0);
 }
 iface->data = malloc(sizeof(*iface->data) * j, M_TEMP, M_WAITOK);
 iface->num = j;
 i = j = 0;
 while (i < len)
  if (isspace(p[i]) || p[i] == '\0')
   i++;
  else {
   iface->data[j] = p + i;
   i += strlen(p + i) + 1;
   j++;
  }

 return (j);
}
