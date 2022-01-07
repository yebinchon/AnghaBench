
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_lock ;


 int HX509_UNKNOWN_LOCK_COMMAND ;
 int default_prompter ;
 int hx509_lock_add_password (int ,char const*) ;
 int hx509_lock_set_prompter (int ,int ,int *) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

int
hx509_lock_command_string(hx509_lock lock, const char *string)
{
    if (strncasecmp(string, "PASS:", 5) == 0) {
 hx509_lock_add_password(lock, string + 5);
    } else if (strcasecmp(string, "PROMPT") == 0) {
 hx509_lock_set_prompter(lock, default_prompter, ((void*)0));
    } else
 return HX509_UNKNOWN_LOCK_COMMAND;
    return 0;
}
