
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int EXPORTS_LINE_SIZE ;
 int LOG_INFO ;
 int errno ;
 int exports_clear () ;
 unsigned int exports_file ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (unsigned int,char*) ;
 int g_gate_log (int ,char*,unsigned int) ;
 int g_gate_xlog (char*,...) ;
 int line_parse (char*,unsigned int) ;
 int strerror (int ) ;
 unsigned int strlen (char*) ;

__attribute__((used)) static void
exports_get(void)
{
 char buf[EXPORTS_LINE_SIZE], *line;
 unsigned lineno = 0, objs = 0, len;
 FILE *fd;

 exports_clear();

 fd = fopen(exports_file, "r");
 if (fd == ((void*)0)) {
  g_gate_xlog("Cannot open exports file (%s): %s.", exports_file,
      strerror(errno));
 }

 g_gate_log(LOG_INFO, "Reading exports file (%s).", exports_file);

 for (;;) {
  if (fgets(buf, sizeof(buf), fd) == ((void*)0)) {
   if (feof(fd))
    break;

   g_gate_xlog("Error while reading exports file: %s.",
       strerror(errno));
  }


  lineno++;


  for (line = buf; *line == ' ' || *line == '\t'; ++line)
   ;


  if (*line == '\n' || *line == '#' || *line == '\0')
   continue;

  len = strlen(line);
  if (line[len - 1] == '\n') {

   line[len - 1] = '\0';
  } else {
   if (!feof(fd))
    g_gate_xlog("Line %u too long.", lineno);
  }

  line_parse(line, lineno);
  objs++;
 }

 fclose(fd);

 if (objs == 0)
  g_gate_xlog("There are no objects to export.");

 g_gate_log(LOG_INFO, "Exporting %u object(s).", objs);
}
