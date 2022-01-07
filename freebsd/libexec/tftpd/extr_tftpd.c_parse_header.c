
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct formats {int * f_mode; } ;
typedef int ssize_t ;


 int EBADOP ;
 int LOG_ERR ;
 int LOG_INFO ;
 int PATH_MAX ;
 int exit (int) ;
 struct formats* formats ;
 int get_field (int,char*,int ) ;
 scalar_t__ isupper (char) ;
 int send_error (int,int ) ;
 scalar_t__ strcmp (int *,char*) ;
 int tftp_log (int ,char*,...) ;
 char tolower (char) ;

__attribute__((used)) static char *
parse_header(int peer, char *recvbuffer, ssize_t size,
 char **filename, char **mode)
{
 char *cp;
 int i;
 struct formats *pf;

 *mode = ((void*)0);
 cp = recvbuffer;

 i = get_field(peer, recvbuffer, size);
 if (i >= PATH_MAX) {
  tftp_log(LOG_ERR, "Bad option - filename too long");
  send_error(peer, EBADOP);
  exit(1);
 }
 *filename = recvbuffer;
 tftp_log(LOG_INFO, "Filename: '%s'", *filename);
 cp += i;

 i = get_field(peer, cp, size);
 *mode = cp;
 cp += i;


 for (cp = *mode; *cp; cp++)
  if (isupper(*cp))
   *cp = tolower(*cp);
 for (pf = formats; pf->f_mode; pf++)
  if (strcmp(pf->f_mode, *mode) == 0)
   break;
 if (pf->f_mode == ((void*)0)) {
  tftp_log(LOG_ERR,
      "Bad option - Unknown transfer mode (%s)", *mode);
  send_error(peer, EBADOP);
  exit(1);
 }
 tftp_log(LOG_INFO, "Mode: '%s'", *mode);

 return (cp + 1);
}
