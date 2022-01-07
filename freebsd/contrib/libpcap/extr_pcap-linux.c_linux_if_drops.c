
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;
 long strtol (char*,int *,int) ;

__attribute__((used)) static long int
linux_if_drops(const char * if_name)
{
 char buffer[512];
 char * bufptr;
 FILE * file;
 int field_to_convert = 3, if_name_sz = strlen(if_name);
 long int dropped_pkts = 0;

 file = fopen("/proc/net/dev", "r");
 if (!file)
  return 0;

 while (!dropped_pkts && fgets( buffer, sizeof(buffer), file ))
 {



  if (field_to_convert != 4 && strstr(buffer, "bytes"))
  {
   field_to_convert = 4;
   continue;
  }


  if ((bufptr = strstr(buffer, if_name)) &&
   (bufptr == buffer || *(bufptr-1) == ' ') &&
   *(bufptr + if_name_sz) == ':')
  {
   bufptr = bufptr + if_name_sz + 1;


   while( --field_to_convert && *bufptr != '\0')
   {
    while (*bufptr != '\0' && *(bufptr++) == ' ');
    while (*bufptr != '\0' && *(bufptr++) != ' ');
   }


   while (*bufptr != '\0' && *bufptr == ' ') bufptr++;

   if (*bufptr != '\0')
    dropped_pkts = strtol(bufptr, ((void*)0), 10);

   break;
  }
 }

 fclose(file);
 return dropped_pkts;
}
