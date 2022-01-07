
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct client_lease {TYPE_1__* options; } ;
struct TYPE_2__ {int len; int data; } ;
 int check_classless_option (int ,int ) ;
 int check_search (char const*) ;
 int free (int ) ;
 int ipv4addrs (char const*) ;
 char* option_as_string (int,int ,int ) ;
 char* pretty_print_option (int,int ,int ,int ,int ) ;
 int res_hnok (char const*) ;
 int unknown_ok ;
 int warning (char*,...) ;

int
check_option(struct client_lease *l, int option)
{
 const char *opbuf;
 const char *sbuf;



 opbuf = pretty_print_option(option, l->options[option].data,
     l->options[option].len, 0, 0);

 sbuf = option_as_string(option, l->options[option].data,
     l->options[option].len);

 switch (option) {
 case 138:
 case 132:
 case 165:
 case 145:
 case 183:
 case 171:
 case 200:
 case 170:
 case 175:
 case 147:
 case 137:
 case 202:
 case 157:
 case 154:
 case 163:
 case 164:
 case 178:
 case 186:
 case 159:
 case 166:
 case 142:
 case 148:
 case 156:
 case 129:
 case 179:
 case 172:
 case 139:
 case 140:
  if (!ipv4addrs(opbuf)) {
   warning("Invalid IP address in option: %s", opbuf);
   return (0);
  }
  return (1) ;
 case 177:
 case 158:
 case 160:
 case 134:
  if (!res_hnok(sbuf)) {
   warning("Bogus Host Name option %d: %s (%s)", option,
       sbuf, opbuf);
   l->options[option].len = 0;
   free(l->options[option].data);
  }
  return (1);
 case 184:
 case 182:
  if (!res_hnok(sbuf)) {
   if (!check_search(sbuf)) {
    warning("Bogus domain search list %d: %s (%s)",
        option, sbuf, opbuf);
    l->options[option].len = 0;
    free(l->options[option].data);
   }
  }
  return (1);
 case 153:
 case 133:
 case 203:
 case 167:
 case 146:
 case 180:
 case 173:
 case 155:
 case 149:
 case 168:
 case 199:
 case 152:
 case 151:
 case 174:
 case 206:
 case 150:
 case 169:
 case 144:
 case 143:
 case 141:
 case 131:
 case 205:
 case 176:
 case 198:
 case 135:
 case 136:
 case 130:
 case 162:
 case 161:
 case 128:
 case 187:
 case 195:
 case 191:
 case 192:
 case 190:
 case 193:
 case 194:
 case 188:
 case 189:
 case 197:
 case 196:
 case 204:
 case 185:
 case 181:
  return (1);
 case 201:
  return (check_classless_option(l->options[option].data,
      l->options[option].len));
 default:
  warning("unknown dhcp option value 0x%x", option);
  return (unknown_ok);
 }
}
