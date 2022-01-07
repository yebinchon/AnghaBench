
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* convbuffer ;
 scalar_t__ feof (int ) ;
 int file ;
 size_t fread (char*,int,size_t,int ) ;

__attribute__((used)) static size_t
convert_to_net(char *buffer, size_t count, int init)
{
 size_t i;
 static size_t n = 0, in = 0;
 static int newline = -1;

 if (init) {
  newline = -1;
  n = 0;
  in = 0;
  return 0 ;
 }




 i = 0;

 if (newline != -1) {
  buffer[i++] = newline;
  newline = -1;
 }

 while (i < count) {
  if (n == in) {

   if (feof(file)) break;


   in = fread(convbuffer, 1, count, file);
   if (in == 0) break;
   n = 0;
  }


  if (convbuffer[n] == '\r') {
   buffer[i++] = '\r';
   buffer[i++] = '\0';
   n++;
   continue;
  }


  if (convbuffer[n] == '\n') {
   buffer[i++] = '\r';
   buffer[i++] = '\n';
   n++;
   continue;
  }

  buffer[i++] = convbuffer[n++];
 }

 if (i > count) {




  newline = buffer[i-1];
 }

 if (i < count) {

  return i;
 } else
  return count;

}
