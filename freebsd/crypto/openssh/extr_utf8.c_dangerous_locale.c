
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODESET ;
 char* nl_langinfo (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
dangerous_locale(void) {
 char *loc;

 loc = nl_langinfo(CODESET);
 return strcmp(loc, "UTF-8") != 0 &&
     strcmp(loc, "US-ASCII") != 0 &&
     strcmp(loc, "ANSI_X3.4-1968") != 0 &&
     strcmp(loc, "ISO8859-1") != 0 &&
     strcmp(loc, "646") != 0 &&
     strcmp(loc, "") != 0;
}
