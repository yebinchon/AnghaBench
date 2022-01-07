
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 int fgetc (int ) ;
 int fprintf (int ,char*,char*) ;
 int stat (char*,struct stat*) ;
 int stderr ;
 int stdin ;

BOOLEAN
UtQueryForOverwrite (
    char *Pathname)
{
    struct stat StatInfo;
    int InChar;


    if (!stat (Pathname, &StatInfo))
    {
        fprintf (stderr, "Target file \"%s\" already exists, overwrite? [y|n] ",
            Pathname);

        InChar = fgetc (stdin);
        if (InChar == '\n')
        {
            InChar = fgetc (stdin);
        }

        if ((InChar != 'y') && (InChar != 'Y'))
        {
            return (FALSE);
        }
    }

    return (TRUE);
}
