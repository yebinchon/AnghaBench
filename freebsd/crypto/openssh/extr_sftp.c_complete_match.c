
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u_int ;
struct sftp_conn {int dummy; } ;
typedef int ins ;
struct TYPE_8__ {int gl_matchc; int gl_pathv; } ;
typedef TYPE_1__ glob_t ;
typedef int g ;
struct TYPE_9__ {char* cursor; } ;
typedef TYPE_2__ LineInfo ;
typedef int EditLine ;


 int GLOB_DOOFFS ;
 int GLOB_MARK ;
 int LOCAL ;
 char* complete_ambiguous (char*,int ,int) ;
 int complete_display (int ,size_t) ;
 int el_insertstr (int *,char*) ;
 TYPE_2__* el_line (int *) ;
 int fatal (char*) ;
 int free (char*) ;
 int glob (char*,int,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 char* make_absolute (char*,char*) ;
 int mblen (char*,size_t) ;
 int memcpy (char*,char*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 char* path_strip (char*,char*) ;
 int remote_glob (struct sftp_conn*,char*,int,int *,TYPE_1__*) ;
 size_t strlen (char*) ;
 int xasprintf (char**,char*,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int
complete_match(EditLine *el, struct sftp_conn *conn, char *remote_path,
    char *file, int remote, int lastarg, char quote, int terminated)
{
 glob_t g;
 char *tmp, *tmp2, ins[8];
 u_int i, hadglob, pwdlen, len, tmplen, filelen, cesc, isesc, isabs;
 int clen;
 const LineInfo *lf;


 if (file == ((void*)0))
  tmp = xstrdup("*");
 else
  xasprintf(&tmp, "%s*", file);


 isabs = tmp[0] == '/';

 memset(&g, 0, sizeof(g));
 if (remote != LOCAL) {
  tmp = make_absolute(tmp, remote_path);
  remote_glob(conn, tmp, GLOB_DOOFFS|GLOB_MARK, ((void*)0), &g);
 } else
  glob(tmp, GLOB_DOOFFS|GLOB_MARK, ((void*)0), &g);


 for (hadglob = tmplen = pwdlen = 0; tmp[tmplen] != 0; tmplen++) {

  if (tmp[tmplen] == '*' || tmp[tmplen] == '?') {
   if (tmp[tmplen] != '*' || tmp[tmplen + 1] != '\0')
    hadglob = 1;
   break;
  }
  if (tmp[tmplen] == '\\' && tmp[tmplen + 1] != '\0')
   tmplen++;
  if (tmp[tmplen] == '/')
   pwdlen = tmplen + 1;
 }
 free(tmp);
 tmp = ((void*)0);

 if (g.gl_matchc == 0)
  goto out;

 if (g.gl_matchc > 1)
  complete_display(g.gl_pathv, pwdlen);


 if (file == ((void*)0) || hadglob)
  goto out;

 tmp2 = complete_ambiguous(file, g.gl_pathv, g.gl_matchc);
 tmp = path_strip(tmp2, isabs ? ((void*)0) : remote_path);
 free(tmp2);

 if (tmp == ((void*)0))
  goto out;

 tmplen = strlen(tmp);
 filelen = strlen(file);


 cesc = isesc = 0;
 for (i = 0; i < filelen; i++) {
  if (!isesc && file[i] == '\\' && i + 1 < filelen){
   isesc = 1;
   cesc++;
  } else
   isesc = 0;
 }

 if (tmplen > (filelen - cesc)) {
  tmp2 = tmp + filelen - cesc;
  len = strlen(tmp2);

  for (i = 0; i < len; i += clen) {
   if ((clen = mblen(tmp2 + i, len - i)) < 0 ||
       (size_t)clen > sizeof(ins) - 2)
    fatal("invalid multibyte character");
   ins[0] = '\\';
   memcpy(ins + 1, tmp2 + i, clen);
   ins[clen + 1] = '\0';
   switch (tmp2[i]) {
   case '\'':
   case '"':
   case '\\':
   case '\t':
   case '[':
   case ' ':
   case '#':
   case '*':
    if (quote == '\0' || tmp2[i] == quote) {
     if (el_insertstr(el, ins) == -1)
      fatal("el_insertstr "
          "failed.");
     break;
    }

   default:
    if (el_insertstr(el, ins + 1) == -1)
     fatal("el_insertstr failed.");
    break;
   }
  }
 }

 lf = el_line(el);
 if (g.gl_matchc == 1) {
  i = 0;
  if (!terminated && quote != '\0')
   ins[i++] = quote;
  if (*(lf->cursor - 1) != '/' &&
      (lastarg || *(lf->cursor) != ' '))
   ins[i++] = ' ';
  ins[i] = '\0';
  if (i > 0 && el_insertstr(el, ins) == -1)
   fatal("el_insertstr failed.");
 }
 free(tmp);

 out:
 globfree(&g);
 return g.gl_matchc;
}
