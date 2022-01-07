
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOL ;
 int logchar (int *) ;
 int read (int ,unsigned char*,int) ;
 int remote_desc ;
 int sync_error (int *,char*,int,unsigned char) ;

__attribute__((used)) static void
expect (FILE *fp)
{
  int fromlog;
  unsigned char fromgdb;

  if ((fromlog = logchar (fp)) != ' ')
    {
      sync_error (fp, "Sync error during gdb read of leading blank", ' ',
    fromlog);
    }
  do
    {
      fromlog = logchar (fp);
      if (fromlog == EOL)
 {
   break;
 }
      read (remote_desc, &fromgdb, 1);
    }
  while (fromlog == fromgdb);
  if (fromlog != EOL)
    {
      sync_error (fp, "Sync error during read of gdb packet", fromlog,
    fromgdb);
    }
}
