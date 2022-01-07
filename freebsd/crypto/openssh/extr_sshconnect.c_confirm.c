
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ batch_mode; } ;


 int RP_ECHO ;
 int free (char*) ;
 TYPE_1__ options ;
 char* read_passphrase (char const*,int ) ;
 scalar_t__ strcasecmp (char*,char*) ;
 size_t strcspn (char*,char*) ;

__attribute__((used)) static int
confirm(const char *prompt)
{
 const char *msg, *again = "Please type 'yes' or 'no': ";
 char *p;
 int ret = -1;

 if (options.batch_mode)
  return 0;
 for (msg = prompt;;msg = again) {
  p = read_passphrase(msg, RP_ECHO);
  if (p == ((void*)0))
   return 0;
  p[strcspn(p, "\n")] = '\0';
  if (p[0] == '\0' || strcasecmp(p, "no") == 0)
   ret = 0;
  else if (strcasecmp(p, "yes") == 0)
   ret = 1;
  free(p);
  if (ret != -1)
   return ret;
 }
}
