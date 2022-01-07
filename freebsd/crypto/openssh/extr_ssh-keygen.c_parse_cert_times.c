
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int time_t ;
typedef int int64_t ;


 int cert_valid_from ;
 int cert_valid_to ;
 int convtime (char*) ;
 int fatal (char*,...) ;
 int free (char*) ;
 scalar_t__ parse_absolute_time (char*,int*) ;
 int parse_relative_time (char*,int) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int time (int *) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
parse_cert_times(char *timespec)
{
 char *from, *to;
 time_t now = time(((void*)0));
 int64_t secs;


 if (*timespec == '+' && strchr(timespec, ':') == ((void*)0)) {
  if ((secs = convtime(timespec + 1)) == -1)
   fatal("Invalid relative certificate life %s", timespec);
  cert_valid_to = now + secs;




  cert_valid_from = ((now - 59)/ 60) * 60;
  return;
 }






 from = xstrdup(timespec);
 to = strchr(from, ':');
 if (to == ((void*)0) || from == to || *(to + 1) == '\0')
  fatal("Invalid certificate life specification %s", timespec);
 *to++ = '\0';

 if (*from == '-' || *from == '+')
  cert_valid_from = parse_relative_time(from, now);
 else if (strcmp(from, "always") == 0)
  cert_valid_from = 0;
 else if (parse_absolute_time(from, &cert_valid_from) != 0)
  fatal("Invalid from time \"%s\"", from);

 if (*to == '-' || *to == '+')
  cert_valid_to = parse_relative_time(to, now);
 else if (strcmp(to, "forever") == 0)
  cert_valid_to = ~(u_int64_t)0;
 else if (parse_absolute_time(to, &cert_valid_to) != 0)
  fatal("Invalid to time \"%s\"", to);

 if (cert_valid_to <= cert_valid_from)
  fatal("Empty certificate validity interval");
 free(from);
}
