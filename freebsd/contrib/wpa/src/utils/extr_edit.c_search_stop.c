
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_BUF_LEN ;
 int cmdbuf ;
 int cmdbuf_len ;
 int cmdbuf_pos ;
 int edit_redraw () ;
 int os_strlcpy (int ,char*,int ) ;
 int os_strlen (int ) ;
 char* search_buf ;
 int search_clear () ;
 char* search_find () ;

__attribute__((used)) static void search_stop(void)
{
 char *match = search_find();
 search_buf[0] = '\0';
 search_clear();
 if (match) {
  os_strlcpy(cmdbuf, match, CMD_BUF_LEN);
  cmdbuf_len = os_strlen(cmdbuf);
  cmdbuf_pos = cmdbuf_len;
 }
 edit_redraw();
}
