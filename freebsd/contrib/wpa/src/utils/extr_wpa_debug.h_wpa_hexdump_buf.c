
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int wpa_hexdump (int,char const*,int *,int ) ;
 int * wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static inline void wpa_hexdump_buf(int level, const char *title,
       const struct wpabuf *buf)
{
 wpa_hexdump(level, title, buf ? wpabuf_head(buf) : ((void*)0),
      buf ? wpabuf_len(buf) : 0);
}
