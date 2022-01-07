
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* c_cc; } ;
struct TYPE_3__ {unsigned int* c_cc; } ;


 scalar_t__ DISABLED (unsigned int) ;
 int UChar (unsigned int) ;
 int fprintf (int ,char*,...) ;
 char* key_backspace ;
 TYPE_2__ mode ;
 TYPE_1__ oldmode ;
 int stderr ;

__attribute__((used)) static void
report(const char *name, int which, unsigned def)
{
    unsigned older, newer;
    char *p;

    newer = mode.c_cc[which];
    older = oldmode.c_cc[which];

    if (older == newer && older == def)
 return;

    (void) fprintf(stderr, "%s %s ", name, older == newer ? "is" : "set to");

    if (DISABLED(newer))
 (void) fprintf(stderr, "undef.\n");




    else if (newer == 0177)
 (void) fprintf(stderr, "delete.\n");
    else if ((p = key_backspace) != 0
      && newer == (unsigned char) p[0]
      && p[1] == '\0')
 (void) fprintf(stderr, "backspace.\n");
    else if (newer < 040) {
 newer ^= 0100;
 (void) fprintf(stderr, "control-%c (^%c).\n", UChar(newer), UChar(newer));
    } else
 (void) fprintf(stderr, "%c.\n", UChar(newer));
}
