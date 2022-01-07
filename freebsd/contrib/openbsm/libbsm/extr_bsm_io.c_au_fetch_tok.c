
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_47__ {int len; int* data; int id; } ;
typedef TYPE_1__ tokenstr_t ;
 int fetch_arb_tok (TYPE_1__*,int*,int) ;
 int fetch_arg32_tok (TYPE_1__*,int*,int) ;
 int fetch_arg64_tok (TYPE_1__*,int*,int) ;
 int fetch_attr32_tok (TYPE_1__*,int*,int) ;
 int fetch_attr64_tok (TYPE_1__*,int*,int) ;
 int fetch_execarg_tok (TYPE_1__*,int*,int) ;
 int fetch_execenv_tok (TYPE_1__*,int*,int) ;
 int fetch_exit_tok (TYPE_1__*,int*,int) ;
 int fetch_file_tok (TYPE_1__*,int*,int) ;
 int fetch_header32_ex_tok (TYPE_1__*,int*,int) ;
 int fetch_header32_tok (TYPE_1__*,int*,int) ;
 int fetch_header64_ex_tok (TYPE_1__*,int*,int) ;
 int fetch_header64_tok (TYPE_1__*,int*,int) ;
 int fetch_inaddr_ex_tok (TYPE_1__*,int*,int) ;
 int fetch_inaddr_tok (TYPE_1__*,int*,int) ;
 int fetch_invalid_tok (TYPE_1__*,int*,int) ;
 int fetch_ip_tok (TYPE_1__*,int*,int) ;
 int fetch_ipc_tok (TYPE_1__*,int*,int) ;
 int fetch_ipcperm_tok (TYPE_1__*,int*,int) ;
 int fetch_iport_tok (TYPE_1__*,int*,int) ;
 int fetch_newgroups_tok (TYPE_1__*,int*,int) ;
 int fetch_opaque_tok (TYPE_1__*,int*,int) ;
 int fetch_path_tok (TYPE_1__*,int*,int) ;
 int fetch_priv_tok (TYPE_1__*,int*,int) ;
 int fetch_privset_tok (TYPE_1__*,int*,int) ;
 int fetch_process32_tok (TYPE_1__*,int*,int) ;
 int fetch_process32ex_tok (TYPE_1__*,int*,int) ;
 int fetch_process64_tok (TYPE_1__*,int*,int) ;
 int fetch_process64ex_tok (TYPE_1__*,int*,int) ;
 int fetch_return32_tok (TYPE_1__*,int*,int) ;
 int fetch_return64_tok (TYPE_1__*,int*,int) ;
 int fetch_seq_tok (TYPE_1__*,int*,int) ;
 int fetch_sock_inet128_tok (TYPE_1__*,int*,int) ;
 int fetch_sock_inet32_tok (TYPE_1__*,int*,int) ;
 int fetch_sock_unix_tok (TYPE_1__*,int*,int) ;
 int fetch_socket_tok (TYPE_1__*,int*,int) ;
 int fetch_socketex32_tok (TYPE_1__*,int*,int) ;
 int fetch_subject32_tok (TYPE_1__*,int*,int) ;
 int fetch_subject32ex_tok (TYPE_1__*,int*,int) ;
 int fetch_subject64_tok (TYPE_1__*,int*,int) ;
 int fetch_subject64ex_tok (TYPE_1__*,int*,int) ;
 int fetch_text_tok (TYPE_1__*,int*,int) ;
 int fetch_trailer_tok (TYPE_1__*,int*,int) ;
 int fetch_zonename_tok (TYPE_1__*,int*,int) ;

int
au_fetch_tok(tokenstr_t *tok, u_char *buf, int len)
{

 if (len <= 0)
  return (-1);

 tok->len = 1;
 tok->data = buf;
 tok->id = *buf;

 switch(tok->id) {
 case 162:
  return (fetch_header32_tok(tok, buf, len));

 case 161:
  return (fetch_header32_ex_tok(tok, buf, len));

 case 160:
  return (fetch_header64_tok(tok, buf, len));

 case 159:
  return (fetch_header64_ex_tok(tok, buf, len));

 case 130:
  return (fetch_trailer_tok(tok, buf, len));

 case 170:
  return (fetch_arg32_tok(tok, buf, len));

 case 169:
  return (fetch_arg64_tok(tok, buf, len));

 case 168:
  return (fetch_attr32_tok(tok, buf, len));

 case 167:
  return (fetch_attr64_tok(tok, buf, len));

 case 163:
  return (fetch_exit_tok(tok, buf, len));

 case 165:
  return (fetch_execarg_tok(tok, buf, len));

 case 164:
  return (fetch_execenv_tok(tok, buf, len));

 case 150:
  return (fetch_file_tok(tok, buf, len));

 case 152:
  return (fetch_newgroups_tok(tok, buf, len));

 case 158:
  return (fetch_inaddr_tok(tok, buf, len));

 case 157:
  return (fetch_inaddr_ex_tok(tok, buf, len));

 case 156:
  return (fetch_ip_tok(tok, buf, len));

 case 155:
  return (fetch_ipc_tok(tok, buf, len));

 case 154:
  return (fetch_ipcperm_tok(tok, buf, len));

 case 153:
  return (fetch_iport_tok(tok, buf, len));

 case 151:
  return (fetch_opaque_tok(tok, buf, len));

 case 149:
  return (fetch_path_tok(tok, buf, len));

 case 147:
  return (fetch_process32_tok(tok, buf, len));

 case 146:
  return (fetch_process32ex_tok(tok, buf, len));

 case 145:
  return (fetch_process64_tok(tok, buf, len));

 case 144:
  return (fetch_process64ex_tok(tok, buf, len));

 case 143:
  return (fetch_return32_tok(tok, buf, len));

 case 142:
  return (fetch_return64_tok(tok, buf, len));

 case 141:
  return (fetch_seq_tok(tok, buf, len));

 case 140:
  return (fetch_socket_tok(tok, buf, len));

 case 137:
  return (fetch_sock_inet32_tok(tok, buf, len));

 case 136:
  return (fetch_sock_unix_tok(tok, buf, len));

 case 138:
  return (fetch_sock_inet128_tok(tok, buf, len));

 case 135:
  return (fetch_subject32_tok(tok, buf, len));

 case 134:
  return (fetch_subject32ex_tok(tok, buf, len));

 case 133:
  return (fetch_subject64_tok(tok, buf, len));

 case 132:
  return (fetch_subject64ex_tok(tok, buf, len));

 case 131:
  return (fetch_text_tok(tok, buf, len));

 case 139:
  return (fetch_socketex32_tok(tok, buf, len));

 case 166:
  return (fetch_arb_tok(tok, buf, len));

 case 128:
  return (fetch_zonename_tok(tok, buf, len));

 case 129:
  return (fetch_priv_tok(tok, buf, len));

 case 148:
  return (fetch_privset_tok(tok, buf, len));

 default:
  return (fetch_invalid_tok(tok, buf, len));
 }
}
