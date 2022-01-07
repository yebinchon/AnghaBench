
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MSG_INFO ;
 scalar_t__ fgets (char*,int,int *) ;
 int newline_terminated (char*,int) ;
 char* os_strchr (char*,char) ;
 int os_strlen (char*) ;
 char* os_strrchr (char*,char) ;
 int skip_line_end (int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static char * wpa_config_get_line(char *s, int size, FILE *stream, int *line,
      char **_pos)
{
 char *pos, *end, *sstart;

 while (fgets(s, size, stream)) {
  (*line)++;
  s[size - 1] = '\0';
  if (!newline_terminated(s, size)) {




   wpa_printf(MSG_INFO, "Long line in configuration file "
       "truncated");
   skip_line_end(stream);
  }
  pos = s;


  while (*pos == ' ' || *pos == '\t' || *pos == '\r')
   pos++;


  if (*pos == '#' || *pos == '\n' || *pos == '\0')
   continue;





  sstart = os_strchr(pos, '"');
  if (sstart)
   sstart = os_strrchr(sstart + 1, '"');
  if (!sstart)
   sstart = pos;
  end = os_strchr(sstart, '#');
  if (end)
   *end-- = '\0';
  else
   end = pos + os_strlen(pos) - 1;


  while (end > pos &&
         (*end == '\n' || *end == ' ' || *end == '\t' ||
   *end == '\r'))
   *end-- = '\0';

  if (*pos == '\0')
   continue;

  if (_pos)
   *_pos = pos;
  return pos;
 }

 if (_pos)
  *_pos = ((void*)0);
 return ((void*)0);
}
