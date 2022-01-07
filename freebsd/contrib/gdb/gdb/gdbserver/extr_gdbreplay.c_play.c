
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOL ;
 int logchar (int *) ;
 int remote_desc ;
 int sync_error (int *,char*,char,int) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
play (FILE *fp)
{
  int fromlog;
  char ch;

  if ((fromlog = logchar (fp)) != ' ')
    {
      sync_error (fp, "Sync error skipping blank during write to gdb", ' ',
    fromlog);
    }
  while ((fromlog = logchar (fp)) != EOL)
    {
      ch = fromlog;
      write (remote_desc, &ch, 1);
    }
}
