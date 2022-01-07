
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ ENOSYS ;
 int GRND_NONBLOCK ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int eloop_register_read_sock (scalar_t__,int ,int *,int *) ;
 scalar_t__ errno ;
 scalar_t__ getrandom (int *,int ,int ) ;
 scalar_t__ open (char*,int) ;
 int os_free (int *) ;
 int * os_strdup (char const*) ;
 int * random_entropy_file ;
 scalar_t__ random_fd ;
 int random_read_entropy () ;
 int random_read_fd ;
 int random_write_entropy () ;
 int strerror (scalar_t__) ;
 int wpa_printf (int ,char*,...) ;

void random_init(const char *entropy_file)
{
 os_free(random_entropy_file);
 if (entropy_file)
  random_entropy_file = os_strdup(entropy_file);
 else
  random_entropy_file = ((void*)0);
 random_read_entropy();


 if (random_fd >= 0)
  return;
 random_fd = open("/dev/random", O_RDONLY | O_NONBLOCK);
 if (random_fd < 0) {
  wpa_printf(MSG_ERROR, "random: Cannot open /dev/random: %s",
      strerror(errno));
  return;
 }
 wpa_printf(MSG_DEBUG, "random: Trying to read entropy from "
     "/dev/random");

 eloop_register_read_sock(random_fd, random_read_fd, ((void*)0), ((void*)0));


 random_write_entropy();
}
