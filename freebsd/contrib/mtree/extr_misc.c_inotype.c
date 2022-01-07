
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
 int S_IFMT ;



const char *
inotype(u_int type)
{

 switch (type & S_IFMT) {
 case 135:
  return ("block");
 case 134:
  return ("char");
 case 133:
  return ("dir");
 case 131:
  return ("fifo");
 case 129:
  return ("file");
 case 130:
  return ("link");

 case 128:
  return ("socket");


 case 132:
  return ("door");

 default:
  return ("unknown");
 }

}
