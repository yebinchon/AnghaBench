
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppmd_stream {struct ppmd_stream* buff; int ppmd7_context; } ;
struct la_zstream {scalar_t__ valid; int * real_stream; } ;
struct archive {int dummy; } ;
struct TYPE_2__ {int (* Ppmd7_Free ) (int *) ;} ;


 int ARCHIVE_OK ;
 TYPE_1__ __archive_ppmd7_functions ;
 int free (struct ppmd_stream*) ;
 int stub1 (int *) ;

__attribute__((used)) static int
compression_end_ppmd(struct archive *a, struct la_zstream *lastrm)
{
 struct ppmd_stream *strm;

 (void)a;

 strm = (struct ppmd_stream *)lastrm->real_stream;
 __archive_ppmd7_functions.Ppmd7_Free(&strm->ppmd7_context);
 free(strm->buff);
 free(strm);
 lastrm->real_stream = ((void*)0);
 lastrm->valid = 0;
 return (ARCHIVE_OK);
}
