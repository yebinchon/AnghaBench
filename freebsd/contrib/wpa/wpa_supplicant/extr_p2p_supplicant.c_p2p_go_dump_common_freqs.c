
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {unsigned int p2p_group_common_freqs_num; int * p2p_group_common_freqs; } ;
typedef int buf ;


 int MSG_DEBUG ;
 int P2P_MAX_CHANNELS ;
 int os_snprintf (char*,int,char*,int ) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,char*) ;

__attribute__((used)) static void p2p_go_dump_common_freqs(struct wpa_supplicant *wpa_s)
{
 char buf[20 + P2P_MAX_CHANNELS * 6];
 char *pos, *end;
 unsigned int i;
 int res;

 pos = buf;
 end = pos + sizeof(buf);
 for (i = 0; i < wpa_s->p2p_group_common_freqs_num; i++) {
  res = os_snprintf(pos, end - pos, " %d",
      wpa_s->p2p_group_common_freqs[i]);
  if (os_snprintf_error(end - pos, res))
   break;
  pos += res;
 }
 *pos = '\0';

 wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Common group frequencies:%s", buf);
}
