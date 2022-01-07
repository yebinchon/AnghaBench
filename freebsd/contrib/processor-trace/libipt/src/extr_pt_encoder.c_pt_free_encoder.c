
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_encoder {int dummy; } ;


 int free (struct pt_encoder*) ;
 int pt_encoder_fini (struct pt_encoder*) ;

void pt_free_encoder(struct pt_encoder *encoder)
{
 pt_encoder_fini(encoder);
 free(encoder);
}
