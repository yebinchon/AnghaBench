
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int EBADOP ;
 int LOG_ERR ;
 int exit (int) ;
 int send_error (int,int ) ;
 int tftp_log (int ,char*) ;

ssize_t
get_field(int peer, char *buffer, ssize_t size)
{
 char *cp = buffer;

 while (cp < buffer + size) {
  if (*cp == '\0') break;
  cp++;
 }
 if (*cp != '\0') {
  tftp_log(LOG_ERR, "Bad option - no trailing \\0 found");
  send_error(peer, EBADOP);
  exit(1);
 }
 return (cp - buffer + 1);
}
