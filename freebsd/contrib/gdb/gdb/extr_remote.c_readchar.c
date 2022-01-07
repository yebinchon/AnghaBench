
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum serial_rc { ____Placeholder_serial_rc } serial_rc ;





 int error (char*) ;
 int perror_with_name (char*) ;
 int remote_desc ;
 int serial_readchar (int ,int) ;
 int target_mourn_inferior () ;

__attribute__((used)) static int
readchar (int timeout)
{
  int ch;

  ch = serial_readchar (remote_desc, timeout);

  if (ch >= 0)
    return (ch & 0x7f);

  switch ((enum serial_rc) ch)
    {
    case 130:
      target_mourn_inferior ();
      error ("Remote connection closed");

    case 129:
      perror_with_name ("Remote communication error");

    case 128:
      break;
    }
  return ch;
}
