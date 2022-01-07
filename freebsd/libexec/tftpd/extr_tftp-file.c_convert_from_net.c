
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int SEEK_END ;
 int abort () ;
 int assert (int) ;
 char* convbuffer ;
 int file ;
 int fseek (int ,int,int ) ;
 scalar_t__ ftell (int ) ;
 size_t fwrite (char*,int,size_t,int ) ;
 int gotcr ;
 int tftp_log (int ,char*) ;

__attribute__((used)) static size_t
convert_from_net(char *buffer, size_t count)
{
 size_t i, n;





 n = 0;
 for (i = 0; i < count; i++) {

  if (gotcr == 0) {
   convbuffer[n++] = buffer[i];
   gotcr = (buffer[i] == '\r');
   continue;
  }


  if (buffer[i] == '\0') {
   gotcr = 0;
   continue;
  }


  if (buffer[i] == '\n') {
   if (n == 0) {
    if (ftell(file) != 0) {
     int r = fseek(file, -1, SEEK_END);
     assert(r == 0);
     convbuffer[n++] = '\n';
    } else {

     tftp_log(LOG_ERR,
         "Received LF as first character");
     abort();
    }
   } else
    convbuffer[n-1] = '\n';
   gotcr = 0;
   continue;
  }


  convbuffer[n++] = buffer[i];
  gotcr = (buffer[i] == '\r');
  continue;
 }

 return fwrite(convbuffer, 1, n, file);
}
