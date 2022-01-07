
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct radius_msg {int dummy; } ;
struct extra_radius_attr {int syntax; char* data; int type; } ;
typedef int buf ;


 size_t RADIUS_MAX_ATTR_LEN ;
 int atoi (char*) ;
 int hexstr2bin (char*,int *,size_t) ;
 int htonl (int ) ;
 int os_memcpy (char*,int *,int) ;
 int os_snprintf (char*,int,char*,char*) ;
 size_t os_strlen (char*) ;
 int printf (char*,...) ;
 int radius_msg_add_attr (struct radius_msg*,int,int *,size_t) ;

__attribute__((used)) static int add_extra_attr(struct radius_msg *msg,
     struct extra_radius_attr *attr)
{
 size_t len;
 char *pos;
 u32 val;
 char buf[RADIUS_MAX_ATTR_LEN + 1];

 switch (attr->syntax) {
 case 's':
  os_snprintf(buf, sizeof(buf), "%s", attr->data);
  len = os_strlen(buf);
  break;
 case 'n':
  buf[0] = '\0';
  len = 1;
  break;
 case 'x':
  pos = attr->data;
  if (pos[0] == '0' && pos[1] == 'x')
   pos += 2;
  len = os_strlen(pos);
  if ((len & 1) || (len / 2) > RADIUS_MAX_ATTR_LEN) {
   printf("Invalid extra attribute hexstring\n");
   return -1;
  }
  len /= 2;
  if (hexstr2bin(pos, (u8 *) buf, len) < 0) {
   printf("Invalid extra attribute hexstring\n");
   return -1;
  }
  break;
 case 'd':
  val = htonl(atoi(attr->data));
  os_memcpy(buf, &val, 4);
  len = 4;
  break;
 default:
  printf("Incorrect extra attribute syntax specification\n");
  return -1;
 }

 if (!radius_msg_add_attr(msg, attr->type, (u8 *) buf, len)) {
  printf("Could not add attribute %d\n", attr->type);
  return -1;
 }

 return 0;
}
