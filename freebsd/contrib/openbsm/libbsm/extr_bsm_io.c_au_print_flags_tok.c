
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_1__ ;


struct TYPE_47__ {int id; } ;
typedef TYPE_1__ tokenstr_t ;
typedef int FILE ;
 int print_arb_tok (int *,TYPE_1__*,char*,int) ;
 int print_arg32_tok (int *,TYPE_1__*,char*,int) ;
 int print_arg64_tok (int *,TYPE_1__*,char*,int) ;
 int print_attr32_tok (int *,TYPE_1__*,char*,int) ;
 int print_attr64_tok (int *,TYPE_1__*,char*,int) ;
 int print_execarg_tok (int *,TYPE_1__*,char*,int) ;
 int print_execenv_tok (int *,TYPE_1__*,char*,int) ;
 int print_exit_tok (int *,TYPE_1__*,char*,int) ;
 int print_file_tok (int *,TYPE_1__*,char*,int) ;
 int print_header32_ex_tok (int *,TYPE_1__*,char*,int) ;
 int print_header32_tok (int *,TYPE_1__*,char*,int) ;
 int print_header64_ex_tok (int *,TYPE_1__*,char*,int) ;
 int print_header64_tok (int *,TYPE_1__*,char*,int) ;
 int print_inaddr_ex_tok (int *,TYPE_1__*,char*,int) ;
 int print_inaddr_tok (int *,TYPE_1__*,char*,int) ;
 int print_invalid_tok (int *,TYPE_1__*,char*,int) ;
 int print_ip_tok (int *,TYPE_1__*,char*,int) ;
 int print_ipc_tok (int *,TYPE_1__*,char*,int) ;
 int print_ipcperm_tok (int *,TYPE_1__*,char*,int) ;
 int print_iport_tok (int *,TYPE_1__*,char*,int) ;
 int print_newgroups_tok (int *,TYPE_1__*,char*,int) ;
 int print_opaque_tok (int *,TYPE_1__*,char*,int) ;
 int print_path_tok (int *,TYPE_1__*,char*,int) ;
 int print_privset_tok (int *,TYPE_1__*,char*,int) ;
 int print_process32_tok (int *,TYPE_1__*,char*,int) ;
 int print_process32ex_tok (int *,TYPE_1__*,char*,int) ;
 int print_process64_tok (int *,TYPE_1__*,char*,int) ;
 int print_process64ex_tok (int *,TYPE_1__*,char*,int) ;
 int print_return32_tok (int *,TYPE_1__*,char*,int) ;
 int print_return64_tok (int *,TYPE_1__*,char*,int) ;
 int print_seq_tok (int *,TYPE_1__*,char*,int) ;
 int print_sock_inet128_tok (int *,TYPE_1__*,char*,int) ;
 int print_sock_inet32_tok (int *,TYPE_1__*,char*,int) ;
 int print_sock_unix_tok (int *,TYPE_1__*,char*,int) ;
 int print_socket_tok (int *,TYPE_1__*,char*,int) ;
 int print_socketex32_tok (int *,TYPE_1__*,char*,int) ;
 int print_subject32_tok (int *,TYPE_1__*,char*,int) ;
 int print_subject32ex_tok (int *,TYPE_1__*,char*,int) ;
 int print_subject64_tok (int *,TYPE_1__*,char*,int) ;
 int print_subject64ex_tok (int *,TYPE_1__*,char*,int) ;
 int print_text_tok (int *,TYPE_1__*,char*,int) ;
 int print_trailer_tok (int *,TYPE_1__*,char*,int) ;
 int print_upriv_tok (int *,TYPE_1__*,char*,int) ;
 int print_zonename_tok (int *,TYPE_1__*,char*,int) ;

void
au_print_flags_tok(FILE *outfp, tokenstr_t *tok, char *del, int oflags)
{

 switch(tok->id) {
 case 162:
  print_header32_tok(outfp, tok, del, oflags);
  return;

 case 161:
  print_header32_ex_tok(outfp, tok, del, oflags);
  return;

 case 160:
  print_header64_tok(outfp, tok, del, oflags);
  return;

 case 159:
  print_header64_ex_tok(outfp, tok, del, oflags);
  return;

 case 130:
  print_trailer_tok(outfp, tok, del, oflags);
  return;

 case 170:
  print_arg32_tok(outfp, tok, del, oflags);
  return;

 case 169:
  print_arg64_tok(outfp, tok, del, oflags);
  return;

 case 166:
  print_arb_tok(outfp, tok, del, oflags);
  return;

 case 168:
  print_attr32_tok(outfp, tok, del, oflags);
  return;

 case 167:
  print_attr64_tok(outfp, tok, del, oflags);
  return;

 case 163:
  print_exit_tok(outfp, tok, del, oflags);
  return;

 case 165:
  print_execarg_tok(outfp, tok, del, oflags);
  return;

 case 164:
  print_execenv_tok(outfp, tok, del, oflags);
  return;

 case 150:
  print_file_tok(outfp, tok, del, oflags);
  return;

 case 152:
  print_newgroups_tok(outfp, tok, del, oflags);
  return;

 case 158:
  print_inaddr_tok(outfp, tok, del, oflags);
  return;

 case 157:
  print_inaddr_ex_tok(outfp, tok, del, oflags);
  return;

 case 156:
  print_ip_tok(outfp, tok, del, oflags);
  return;

 case 155:
  print_ipc_tok(outfp, tok, del, oflags);
  return;

 case 154:
  print_ipcperm_tok(outfp, tok, del, oflags);
  return;

 case 153:
  print_iport_tok(outfp, tok, del, oflags);
  return;

 case 151:
  print_opaque_tok(outfp, tok, del, oflags);
  return;

 case 149:
  print_path_tok(outfp, tok, del, oflags);
  return;

 case 147:
  print_process32_tok(outfp, tok, del, oflags);
  return;

 case 146:
  print_process32ex_tok(outfp, tok, del, oflags);
  return;

 case 145:
  print_process64_tok(outfp, tok, del, oflags);
  return;

 case 144:
  print_process64ex_tok(outfp, tok, del, oflags);
  return;

 case 143:
  print_return32_tok(outfp, tok, del, oflags);
  return;

 case 142:
  print_return64_tok(outfp, tok, del, oflags);
  return;

 case 141:
  print_seq_tok(outfp, tok, del, oflags);
  return;

 case 140:
  print_socket_tok(outfp, tok, del, oflags);
  return;

 case 137:
  print_sock_inet32_tok(outfp, tok, del, oflags);
  return;

 case 136:
  print_sock_unix_tok(outfp, tok, del, oflags);
  return;

 case 138:
  print_sock_inet128_tok(outfp, tok, del, oflags);
  return;

 case 135:
  print_subject32_tok(outfp, tok, del, oflags);
  return;

 case 133:
  print_subject64_tok(outfp, tok, del, oflags);
  return;

 case 134:
  print_subject32ex_tok(outfp, tok, del, oflags);
  return;

 case 132:
  print_subject64ex_tok(outfp, tok, del, oflags);
  return;

 case 131:
  print_text_tok(outfp, tok, del, oflags);
  return;

 case 139:
  print_socketex32_tok(outfp, tok, del, oflags);
  return;

 case 128:
  print_zonename_tok(outfp, tok, del, oflags);
  return;

 case 129:
  print_upriv_tok(outfp, tok, del, oflags);
  return;

 case 148:
  print_privset_tok(outfp, tok, del, oflags);
  return;

 default:
  print_invalid_tok(outfp, tok, del, oflags);
 }
}
