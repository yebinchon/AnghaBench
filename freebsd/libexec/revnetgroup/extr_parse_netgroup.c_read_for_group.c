
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linelist {char* l_groupname; char* l_line; struct linelist* l_next; scalar_t__ l_parsed; } ;


 int LINSIZ ;
 int bcopy (char*,char*,int) ;
 scalar_t__ fgets (char*,int ,int ) ;
 int free (char*) ;
 int gtable ;
 struct linelist* linehead ;
 char* lookup (int ,char*) ;
 scalar_t__ malloc (int) ;
 int netf ;
 int sprintf (char*,char*,char*,char*) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static struct linelist *
read_for_group(char *group)
{
 char *pos, *spos, *linep = ((void*)0), *olinep = ((void*)0);
 int len, olen;
 int cont;
 struct linelist *lp;
 char line[LINSIZ + 1];
 char *data = ((void*)0);

 data = lookup (gtable, group);
 sprintf(line, "%s %s", group, data);
 pos = (char *)&line;




 while (*pos == ' ' || *pos == '\t')
  pos++;
 spos = pos;
 while (*pos != ' ' && *pos != '\t' && *pos != '\n' &&
  *pos != '\0')
  pos++;
 len = pos - spos;
 while (*pos == ' ' || *pos == '\t')
  pos++;
 if (*pos != '\n' && *pos != '\0') {
  lp = (struct linelist *)malloc(sizeof (*lp));
  lp->l_parsed = 0;
  lp->l_groupname = (char *)malloc(len + 1);
  bcopy(spos, lp->l_groupname, len);
  *(lp->l_groupname + len) = '\0';
  len = strlen(pos);
  olen = 0;



   do {
    if (*(pos + len - 1) == '\n')
     len--;
    if (*(pos + len - 1) == '\\') {
     len--;
     cont = 1;
    } else
     cont = 0;
    if (len > 0) {
     linep = (char *)malloc(olen + len + 1);
     if (olen > 0) {
      bcopy(olinep, linep, olen);
      free(olinep);
     }
     bcopy(pos, linep + olen, len);
     olen += len;
     *(linep + olen) = '\0';
     olinep = linep;
    }
   } while (cont);
  lp->l_line = linep;
  lp->l_next = linehead;
  linehead = lp;






   return (lp);
 }
 return ((struct linelist *)0);
}
