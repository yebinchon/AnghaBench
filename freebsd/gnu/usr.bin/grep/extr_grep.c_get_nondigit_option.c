
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int CHAR_BIT ;
 int context_length_arg (char*,int*) ;
 int getopt_long (int,char* const*,int ,int ,int *) ;
 int long_options ;
 int short_options ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int
get_nondigit_option (int argc, char *const *argv, int *default_context)
{
  int opt;
  char buf[sizeof (uintmax_t) * CHAR_BIT + 4];
  char *p = buf;


  buf[0] = '\0';

  while (opt = getopt_long (argc, argv, short_options, long_options, ((void*)0)),
  '0' <= opt && opt <= '9')
    {


      p -= buf[0] == '0';

      *p++ = opt;
      if (p == buf + sizeof buf - 4)
 {



   strcpy (p, "...");
   p += 3;
   break;
 }
    }
  if (p != buf)
    {
      *p = '\0';
      context_length_arg (buf, default_context);
    }

  return opt;
}
