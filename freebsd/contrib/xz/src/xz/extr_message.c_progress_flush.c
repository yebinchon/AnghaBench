
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ V_VERBOSE ;
 char* filename ;
 int fprintf (int ,char*,char const*,...) ;
 int fputc (char,int ) ;
 scalar_t__ mytime_get_elapsed () ;
 int progress_active ;
 scalar_t__ progress_automatic ;
 char* progress_percentage (scalar_t__) ;
 int progress_pos (scalar_t__*,scalar_t__*,scalar_t__*) ;
 char* progress_remaining (scalar_t__,scalar_t__ const) ;
 char* progress_sizes (scalar_t__,scalar_t__,int) ;
 char* progress_speed (scalar_t__,scalar_t__ const) ;
 int progress_started ;
 char* progress_time (scalar_t__ const) ;
 int signals_block () ;
 int signals_unblock () ;
 int stderr ;
 char* tuklib_mbstr_fw (char const*,int) ;
 scalar_t__ verbosity ;

__attribute__((used)) static void
progress_flush(bool finished)
{
 if (!progress_started || verbosity < V_VERBOSE)
  return;

 uint64_t in_pos;
 uint64_t compressed_pos;
 uint64_t uncompressed_pos;
 progress_pos(&in_pos, &compressed_pos, &uncompressed_pos);






 if (!finished && !progress_active
   && (compressed_pos == 0 || uncompressed_pos == 0))
  return;

 progress_active = 0;

 const uint64_t elapsed = mytime_get_elapsed();

 signals_block();




 if (progress_automatic) {
  const char *cols[5] = {
   finished ? "100 %" : progress_percentage(in_pos),
   progress_sizes(compressed_pos, uncompressed_pos, 1),
   progress_speed(uncompressed_pos, elapsed),
   progress_time(elapsed),
   finished ? "" : progress_remaining(in_pos, elapsed),
  };
  fprintf(stderr, "\r %*s %*s   %*s %10s   %10s\n",
    tuklib_mbstr_fw(cols[0], 6), cols[0],
    tuklib_mbstr_fw(cols[1], 35), cols[1],
    tuklib_mbstr_fw(cols[2], 9), cols[2],
    cols[3],
    cols[4]);
 } else {

  fprintf(stderr, "%s: ", filename);


  if (!finished) {


   const char *percentage = progress_percentage(in_pos);
   if (percentage[0] != '-')
    fprintf(stderr, "%s, ", percentage);
  }


  fprintf(stderr, "%s", progress_sizes(
    compressed_pos, uncompressed_pos, 1));


  const char *speed = progress_speed(uncompressed_pos, elapsed);
  if (speed[0] != '\0')
   fprintf(stderr, ", %s", speed);

  const char *elapsed_str = progress_time(elapsed);
  if (elapsed_str[0] != '\0')
   fprintf(stderr, ", %s", elapsed_str);

  fputc('\n', stderr);
 }

 signals_unblock();

 return;
}
