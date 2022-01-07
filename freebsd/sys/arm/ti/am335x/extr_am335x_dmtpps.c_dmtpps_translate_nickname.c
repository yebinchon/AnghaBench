
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicknames {char const* name; int * nick; } ;


 struct nicknames* dmtpps_pin_nicks ;
 scalar_t__ strcasecmp (char const*,int *) ;

__attribute__((used)) static const char *
dmtpps_translate_nickname(const char *nick)
{
 struct nicknames *nn;

 for (nn = dmtpps_pin_nicks; nn->nick != ((void*)0); nn++)
  if (strcasecmp(nick, nn->nick) == 0)
   return nn->name;
 return (nick);
}
