
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FILE ;
 int AU_OFLAG_RAW ;
 int AU_OFLAG_XML ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
print_tok_type(FILE *fp, u_char type, const char *tokname, int oflags)
{

 if (oflags & AU_OFLAG_XML) {
  switch(type) {
  case 160:
   fprintf(fp, "<record ");
   break;

  case 159:
   fprintf(fp, "<record ");
   break;

  case 158:
   fprintf(fp, "<record ");
   break;

  case 157:
   fprintf(fp, "<record ");
   break;

  case 129:
   fprintf(fp, "</record>");
   break;

  case 168:
   fprintf(fp, "<argument ");
   break;

  case 167:
   fprintf(fp, "<argument ");
   break;

  case 166:
   fprintf(fp, "<attribute ");
   break;

  case 165:
   fprintf(fp, "<attribute ");
   break;

  case 161:
   fprintf(fp, "<exit ");
   break;

  case 163:
   fprintf(fp, "<exec_args>");
   break;

  case 162:
   fprintf(fp, "<exec_env>");
   break;

  case 148:
   fprintf(fp, "<file ");
   break;

  case 150:
   fprintf(fp, "<group>");
   break;

  case 156:
   fprintf(fp, "<ip_address>");
   break;

  case 155:
   fprintf(fp, "<ip_address>");
   break;

  case 154:
   fprintf(fp, "<ip ");
   break;

  case 153:
   fprintf(fp, "<IPC");
   break;

  case 152:
   fprintf(fp, "<IPC_perm ");
   break;

  case 151:
   fprintf(fp, "<ip_port>");
   break;

  case 149:
   fprintf(fp, "<opaque>");
   break;

  case 147:
   fprintf(fp, "<path>");
   break;

  case 146:
   fprintf(fp, "<process ");
   break;

  case 145:
   fprintf(fp, "<process ");
   break;

  case 144:
   fprintf(fp, "<process ");
   break;

  case 143:
   fprintf(fp, "<process ");
   break;

  case 142:
   fprintf(fp, "<return ");
   break;

  case 141:
   fprintf(fp, "<return ");
   break;

  case 140:
   fprintf(fp, "<sequence ");
   break;

  case 139:
   fprintf(fp, "<socket ");
   break;

  case 136:
   fprintf(fp, "<socket-inet ");
   break;

  case 135:
   fprintf(fp, "<socket-unix ");
   break;

  case 137:
   fprintf(fp, "<socket-inet6 ");
   break;

  case 134:
   fprintf(fp, "<subject ");
   break;

  case 132:
   fprintf(fp, "<subject ");
   break;

  case 133:
   fprintf(fp, "<subject ");
   break;

  case 131:
   fprintf(fp, "<subject ");
   break;

  case 130:
   fprintf(fp, "<text>");
   break;

  case 138:
   fprintf(fp, "<socket ");
   break;

  case 164:
   fprintf(fp, "<arbitrary ");
   break;

  case 128:
   fprintf(fp, "<zone ");
   break;
  }
 } else {
  if (oflags & AU_OFLAG_RAW)
   fprintf(fp, "%u", type);
  else
   fprintf(fp, "%s", tokname);
 }
}
