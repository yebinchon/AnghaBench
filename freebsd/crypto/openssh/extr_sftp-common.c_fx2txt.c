
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
fx2txt(int status)
{
 switch (status) {
 case 130:
  return("No error");
 case 134:
  return("End of file");
 case 131:
  return("No such file or directory");
 case 128:
  return("Permission denied");
 case 133:
  return("Failure");
 case 136:
  return("Bad message");
 case 132:
  return("No connection");
 case 135:
  return("Connection lost");
 case 129:
  return("Operation unsupported");
 default:
  return("Unknown status");
 }

}
