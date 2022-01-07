
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct TYPE_14__ {int path; } ;
struct TYPE_13__ {int id; int type; } ;
struct TYPE_15__ {TYPE_2__ path; TYPE_1__ ipc; } ;
struct TYPE_16__ {int id; scalar_t__ len; TYPE_3__ tt; } ;
typedef TYPE_4__ tokenstr_t ;
typedef int tok ;
typedef int FILE ;
 scalar_t__ ISOPTSET (int,int ) ;
 int OPT_v ;
 int au_fetch_tok (TYPE_4__*,int *,int) ;
 int au_read_rec (int *,int **) ;
 int bcopy (TYPE_4__*,TYPE_4__*,int) ;
 int free (int *) ;
 int fwrite (int *,int,int,int ) ;
 int opttochk ;
 int select_filepath (int ,int*) ;
 int select_hdr32 (TYPE_4__,int*) ;
 int select_ipcobj (int ,int ,int*) ;
 int select_proc32 (TYPE_4__,int*) ;
 int select_return32 (TYPE_4__,TYPE_4__,int*) ;
 int select_subj32 (TYPE_4__,int*) ;
 int stdout ;

__attribute__((used)) static int
select_records(FILE *fp)
{
 tokenstr_t tok_hdr32_copy;
 u_char *buf;
 tokenstr_t tok;
 int reclen;
 int bytesread;
 int selected;
 uint32_t optchkd;
 int print;

 int err = 0;
 while ((reclen = au_read_rec(fp, &buf)) != -1) {
  optchkd = 0;
  bytesread = 0;
  selected = 1;
  while ((selected == 1) && (bytesread < reclen)) {
   if (-1 == au_fetch_tok(&tok, buf + bytesread,
       reclen - bytesread)) {

    err = 1;
    break;
   }





   switch(tok.id) {
   case 133:
     selected = select_hdr32(tok,
         &optchkd);
     bcopy(&tok, &tok_hdr32_copy,
         sizeof(tok));
     break;

   case 130:
     selected = select_proc32(tok,
         &optchkd);
     break;

   case 128:
     selected = select_subj32(tok,
         &optchkd);
     break;

   case 132:
     selected = select_ipcobj(
         tok.tt.ipc.type, tok.tt.ipc.id,
         &optchkd);
     break;

   case 131:
     selected = select_filepath(
         tok.tt.path.path, &optchkd);
     break;

   case 129:
    selected = select_return32(tok,
        tok_hdr32_copy, &optchkd);
    break;

   default:
    break;
   }
   bytesread += tok.len;
  }

  print = ((selected == 1) && (!err) && (!(opttochk & ~optchkd)));
  if (ISOPTSET(opttochk, OPT_v))
   print = !print;
  if (print)
   (void) fwrite(buf, 1, reclen, stdout);
  free(buf);
 }
 return (0);
}
