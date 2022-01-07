
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* estrdup (char const*) ;
 int optionProcess (int *,int const,char**) ;
 int sntpOptions ;

void
ActivateOption(const char* option, const char* argument) {

 const int ARGV_SIZE = 4;

 char* opts[ARGV_SIZE];

 opts[0] = estrdup("sntpopts");
 opts[1] = estrdup(option);
 opts[2] = estrdup(argument);
 opts[3] = estrdup("127.0.0.1");

 optionProcess(&sntpOptions, ARGV_SIZE, opts);
}
