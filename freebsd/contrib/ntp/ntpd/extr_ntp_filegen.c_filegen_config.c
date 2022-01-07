
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef void* u_char ;
struct TYPE_6__ {int l_ui; } ;
typedef TYPE_1__ l_fp ;
struct TYPE_7__ {char const* dir; char const* fname; scalar_t__ type; scalar_t__ flag; int * fp; } ;
typedef TYPE_2__ FILEGEN ;


 int DPRINTF (int,char*) ;
 int FALSE ;
 int TRUE ;
 void* estrdup (char const*) ;
 int fclose (int *) ;
 int filegen_setup (TYPE_2__*,int ) ;
 int free (char const*) ;
 int get_systime (TYPE_1__*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int valid_fileref (char const*,char const*) ;

void
filegen_config(
 FILEGEN * gen,
 const char * dir,
 const char * fname,
 u_int type,
 u_int flag
 )
{
 int file_existed;
 l_fp now;





 if (strcmp(dir, gen->dir) == 0 && strcmp(fname, gen->fname) == 0
     && type == gen->type && flag == gen->flag)
  return;




 if (!valid_fileref(dir, fname))
  return;

 if (((void*)0) != gen->fp) {
  fclose(gen->fp);
  gen->fp = ((void*)0);
  file_existed = TRUE;
 } else {
  file_existed = FALSE;
 }

 DPRINTF(3, ("configuring filegen:\n"
      "\tdir:\t%s -> %s\n"
      "\tfname:\t%s -> %s\n"
      "\ttype:\t%d -> %d\n"
      "\tflag: %x -> %x\n",
      gen->dir, dir,
      gen->fname, fname,
      gen->type, type,
      gen->flag, flag));

 if (strcmp(gen->dir, dir) != 0) {
  free(gen->dir);
  gen->dir = estrdup(dir);
 }

 if (strcmp(gen->fname, fname) != 0) {
  free(gen->fname);
  gen->fname = estrdup(fname);
 }
 gen->type = (u_char)type;
 gen->flag = (u_char)flag;







 if (file_existed) {
  get_systime(&now);
  filegen_setup(gen, now.l_ui);
 }
}
