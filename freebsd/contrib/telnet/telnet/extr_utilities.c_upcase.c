
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ islower (int) ;
 char toupper (int) ;

void
upcase(char *argument)
{
    int c;

    while ((c = *argument) != 0) {
 if (islower(c)) {
     *argument = toupper(c);
 }
 argument++;
    }
}
