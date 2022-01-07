
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int MSG_DEBUG ;
 int RANDOM_ENTROPY_SIZE ;
 int os_free (char*) ;
 char* os_readfile (int ,size_t*) ;
 scalar_t__ own_pool_ready ;
 int random_add_randomness (char*,int) ;
 int random_entropy_file ;
 int wpa_printf (int ,char*,int ,...) ;

__attribute__((used)) static void random_read_entropy(void)
{
 char *buf;
 size_t len;

 if (!random_entropy_file)
  return;

 buf = os_readfile(random_entropy_file, &len);
 if (buf == ((void*)0))
  return;

 if (len != 1 + RANDOM_ENTROPY_SIZE) {
  wpa_printf(MSG_DEBUG, "random: Invalid entropy file %s",
      random_entropy_file);
  os_free(buf);
  return;
 }

 own_pool_ready = (u8) buf[0];
 random_add_randomness(buf + 1, RANDOM_ENTROPY_SIZE);
 os_free(buf);
 wpa_printf(MSG_DEBUG, "random: Added entropy from %s "
     "(own_pool_ready=%u)",
     random_entropy_file, own_pool_ready);
}
