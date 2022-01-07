
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct cam_path {int dummy; } ;
typedef int enc_softc_t ;
typedef int enc_element_t ;


 int cam_periph_list (struct cam_path*,struct sbuf*) ;

__attribute__((used)) static void
ses_elmdevname_callback(enc_softc_t *enc, enc_element_t *elem,
   struct cam_path *path, void *arg)
{
 struct sbuf *sb;

 sb = (struct sbuf *)arg;
 cam_periph_list(path, sb);
}
