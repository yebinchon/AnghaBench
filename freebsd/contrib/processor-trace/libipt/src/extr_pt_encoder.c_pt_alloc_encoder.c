
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_encoder {int dummy; } ;
struct pt_config {int dummy; } ;


 int free (struct pt_encoder*) ;
 struct pt_encoder* malloc (int) ;
 int pt_encoder_init (struct pt_encoder*,struct pt_config const*) ;

struct pt_encoder *pt_alloc_encoder(const struct pt_config *config)
{
 struct pt_encoder *encoder;
 int errcode;

 encoder = malloc(sizeof(*encoder));
 if (!encoder)
  return ((void*)0);

 errcode = pt_encoder_init(encoder, config);
 if (errcode < 0) {
  free(encoder);
  return ((void*)0);
 }

 return encoder;
}
