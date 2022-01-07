
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {scalar_t__ avail_in; int avail_out; int * next_out; int * next_in; } ;
typedef TYPE_1__ lzma_stream ;
typedef int lzma_ret ;
typedef scalar_t__ lzma_action ;
typedef int FILE ;


 int BUFSIZ ;
 int ENOMEM ;
 int EXIT_FAILURE ;

 int LZMA_CONCATENATED ;

 scalar_t__ LZMA_FINISH ;


 int LZMA_OK ;

 scalar_t__ LZMA_RUN ;
 int LZMA_STREAM_END ;
 int UINT64_MAX ;
 int assert (int) ;
 int errno ;
 int exit (int ) ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fread (int *,int,int,int *) ;
 size_t const fwrite (int *,int,size_t const,int ) ;
 int lzma_alone_decoder (TYPE_1__*,int ) ;
 int lzma_code (TYPE_1__*,scalar_t__) ;
 int lzma_stream_decoder (TYPE_1__*,int ,int ) ;
 int my_errorf (char*,char const*,...) ;
 int stdout ;
 char const* strerror (int ) ;

__attribute__((used)) static void
uncompress(lzma_stream *strm, FILE *file, const char *filename)
{
 lzma_ret ret;





 ret = lzma_stream_decoder(strm, UINT64_MAX, LZMA_CONCATENATED);



 if (ret != LZMA_OK) {
  my_errorf("%s", ret == 129 ? strerror(ENOMEM)
    : "Internal error (bug)");
  exit(EXIT_FAILURE);
 }


 uint8_t in_buf[BUFSIZ];
 uint8_t out_buf[BUFSIZ];

 strm->avail_in = 0;
 strm->next_out = out_buf;
 strm->avail_out = BUFSIZ;

 lzma_action action = LZMA_RUN;

 while (1) {
  if (strm->avail_in == 0) {
   strm->next_in = in_buf;
   strm->avail_in = fread(in_buf, 1, BUFSIZ, file);

   if (ferror(file)) {



    my_errorf("%s: Error reading input file: %s",
      filename, strerror(errno));
    exit(EXIT_FAILURE);
   }




   if (feof(file))
    action = LZMA_FINISH;

  }

  ret = lzma_code(strm, action);




  if (strm->avail_out == 0 || ret != LZMA_OK) {
   const size_t write_size = BUFSIZ - strm->avail_out;

   if (fwrite(out_buf, 1, write_size, stdout)
     != write_size) {



    my_errorf("Cannot write to standard output: "
      "%s", strerror(errno));
    exit(EXIT_FAILURE);
   }

   strm->next_out = out_buf;
   strm->avail_out = BUFSIZ;
  }

  if (ret != LZMA_OK) {
   if (ret == LZMA_STREAM_END) {
    assert(strm->avail_in == 0);
    assert(action == LZMA_FINISH);
    assert(feof(file));
    return;

   }

   const char *msg;
   switch (ret) {
   case 129:
    msg = strerror(ENOMEM);
    break;

   case 130:
    msg = "File format not recognized";
    break;

   case 128:

    msg = "Unsupported compression options";
    break;

   case 131:
    msg = "File is corrupt";
    break;

   case 132:
    msg = "Unexpected end of input";
    break;

   default:
    msg = "Internal error (bug)";
    break;
   }

   my_errorf("%s: %s", filename, msg);
   exit(EXIT_FAILURE);
  }
 }
}
