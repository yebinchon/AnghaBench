
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;


 int CMD_ERROR ;
 int CMD_OK ;
 int page_file (char*) ;
 int pager_close () ;
 int pager_open () ;
 int pager_output (char*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
command_more(int argc, char *argv[])
{
 int i;
 int res;
 char line[80];

 res = 0;
 pager_open();
 for (i = 1; (i < argc) && (res == 0); i++) {
  snprintf(line, sizeof(line), "*** FILE %s BEGIN ***\n",
      argv[i]);
  if (pager_output(line))
   break;
  res = page_file(argv[i]);
  if (!res) {
   snprintf(line, sizeof(line), "*** FILE %s END ***\n",
       argv[i]);
   res = pager_output(line);
  }
 }
 pager_close();

 if (res == 0)
  return (CMD_OK);
 else
  return (CMD_ERROR);
}
