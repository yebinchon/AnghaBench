
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FILE ;
 int fprintf (int *,char*) ;

__attribute__((used)) static void
close_tag(FILE *fp, u_char type)
{

 switch(type) {
 case 159:
  fprintf(fp, ">");
  break;

 case 158:
  fprintf(fp, ">");
  break;

 case 157:
  fprintf(fp, ">");
  break;

 case 156:
  fprintf(fp, ">");
  break;

 case 167:
  fprintf(fp, "/>");
  break;

 case 166:
  fprintf(fp, "/>");
  break;

 case 165:
  fprintf(fp, "/>");
  break;

 case 164:
  fprintf(fp, "/>");
  break;

 case 160:
  fprintf(fp, "/>");
  break;

 case 162:
  fprintf(fp, "</exec_args>");
  break;

 case 161:
  fprintf(fp, "</exec_env>");
  break;

 case 147:
  fprintf(fp, "</file>");
  break;

 case 149:
  fprintf(fp, "</group>");
  break;

 case 155:
  fprintf(fp, "</ip_address>");
  break;

 case 154:
  fprintf(fp, "</ip_address>");
  break;

 case 153:
  fprintf(fp, "/>");
  break;

 case 152:
  fprintf(fp, "/>");
  break;

 case 151:
  fprintf(fp, "/>");
  break;

 case 150:
  fprintf(fp, "</ip_port>");
  break;

 case 148:
  fprintf(fp, "</opaque>");
  break;

 case 146:
  fprintf(fp, "</path>");
  break;

 case 145:
  fprintf(fp, "/>");
  break;

 case 144:
  fprintf(fp, "/>");
  break;

 case 143:
  fprintf(fp, "/>");
  break;

 case 142:
  fprintf(fp, "/>");
  break;

 case 141:
  fprintf(fp, "/>");
  break;

 case 140:
  fprintf(fp, "/>");
  break;

 case 139:
  fprintf(fp, "/>");
  break;

 case 138:
  fprintf(fp, "/>");
  break;

 case 135:
  fprintf(fp, "/>");
  break;

 case 134:
  fprintf(fp, "/>");
  break;

 case 136:
  fprintf(fp, "/>");
  break;

 case 133:
  fprintf(fp, "/>");
  break;

 case 131:
  fprintf(fp, "/>");
  break;

 case 132:
  fprintf(fp, "/>");
  break;

 case 130:
  fprintf(fp, "/>");
  break;

 case 129:
  fprintf(fp, "</text>");
  break;

 case 137:
  fprintf(fp, "/>");
  break;

 case 163:
  fprintf(fp, "</arbitrary>");
  break;

 case 128:
  fprintf(fp, "/>");
  break;
 }
}
