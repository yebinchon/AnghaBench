
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auditfilter_module_list {int dummy; } ;
struct auditfilter_module {int dummy; } ;
typedef int FILE ;


 int EINVAL ;
 int LINE_MAX ;
 int TAILQ_INSERT_HEAD (struct auditfilter_module_list*,struct auditfilter_module*,int ) ;
 int am_list ;
 int auditfilter_module_list_free (struct auditfilter_module_list*) ;
 struct auditfilter_module* auditfilter_module_parse (char const*,int,char*) ;
 int errno ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 int * fgets (char*,int,int *) ;
 int strlen (char*) ;

__attribute__((used)) static int
auditfilterd_conf_read(const char *filename, FILE *fp,
    struct auditfilter_module_list *list)
{
 int error, linenumber, syntaxerror;
 struct auditfilter_module *am;
 char buffer[LINE_MAX];

 syntaxerror = 0;
 linenumber = 0;
 while (!feof(fp) && !ferror(fp)) {
  if (fgets(buffer, LINE_MAX, fp) == ((void*)0))
   break;
  linenumber++;
  if (buffer[0] == '#' || strlen(buffer) < 1)
   continue;
  buffer[strlen(buffer)-1] = '\0';
  am = auditfilter_module_parse(filename, linenumber, buffer);
  if (am == ((void*)0)) {
   syntaxerror = 1;
   break;
  }
  TAILQ_INSERT_HEAD(list, am, am_list);
 }




 if (ferror(fp)) {
  error = errno;
  auditfilter_module_list_free(list);
  errno = error;
  return (-1);
 }




 if (syntaxerror) {
  auditfilter_module_list_free(list);
  errno = EINVAL;
  return (-1);
 }
 return (0);
}
