
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_col; } ;


 int TIOCGWINSZ ;
 int atoi (char*) ;
 char* getenv (char*) ;
 int ioctl (int ,int ,struct winsize*) ;

__attribute__((used)) static int
charsperline(void)
{
 int columns;
 char *cp;
 struct winsize ws;

 columns = 0;
 if (ioctl(0, TIOCGWINSZ, &ws) != -1)
  columns = ws.ws_col;
 if (columns == 0 && (cp = getenv("COLUMNS")))
  columns = atoi(cp);
 if (columns == 0)
  columns = 80;
 return (columns);
}
