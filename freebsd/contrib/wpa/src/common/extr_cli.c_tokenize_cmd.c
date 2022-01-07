
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int max_args ;
 char* os_strrchr (char*,char) ;

int tokenize_cmd(char *cmd, char *argv[])
{
 char *pos;
 int argc = 0;

 pos = cmd;
 for (;;) {
  while (*pos == ' ')
   pos++;
  if (*pos == '\0')
   break;
  argv[argc] = pos;
  argc++;
  if (argc == max_args)
   break;
  if (*pos == '"') {
   char *pos2 = os_strrchr(pos, '"');
   if (pos2)
    pos = pos2 + 1;
  }
  while (*pos != '\0' && *pos != ' ')
   pos++;
  if (*pos == ' ')
   *pos++ = '\0';
 }

 return argc;
}
