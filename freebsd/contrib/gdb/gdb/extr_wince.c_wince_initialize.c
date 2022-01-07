
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct sockaddr_in {int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;
typedef int args ;
typedef int PROCESS_INFORMATION ;


 int AF_INET ;
 int CeCreateProcess (int ,int ,int *,int *,int ,int ,int *,int *,int *,int *) ;
 char* CeGetLastError () ;
 int CeRapiInit () ;
 int CeRapiUninit () ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int WINCE_STUB ;
 int accept (int,int *,int *) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int connection_initialized ;
 int error (char*,...) ;
 scalar_t__ gethostname (char*,scalar_t__) ;
 int htons (int) ;
 scalar_t__ listen (int,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ remote_add_host ;
 int s ;
 int setsockopt (int,int ,int ,char*,int) ;
 int socket (int ,int ,int ) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int stub_error (char*) ;
 int towide (char*,int *) ;
 char* upload_to_device (char*,int ) ;

__attribute__((used)) static void
wince_initialize (void)
{
  int tmp;
  char args[256];
  char *hostname;
  struct sockaddr_in sin;
  char *stub_file_name;
  int s0;
  PROCESS_INFORMATION pi;

  if (!connection_initialized)
    switch (CeRapiInit ())
      {
      case 0:
 connection_initialized = 1;
 break;
      default:
 CeRapiUninit ();
 error ("Can't initialize connection to remote device.\n");
 break;
      }


  stub_file_name = upload_to_device ("wince-stub.exe", WINCE_STUB);
  strcpy (args, stub_file_name);

  if (remote_add_host)
    {
      strcat (args, " ");
      hostname = strchr (args, '\0');
      if (gethostname (hostname, sizeof (args) - strlen (args)))
 error ("couldn't get hostname of this system.");
    }


  if ((s0 = socket (AF_INET, SOCK_STREAM, 0)) < 0)
    stub_error ("Couldn't connect to host system.");


  tmp = 1;
  (void) setsockopt (s0, SOL_SOCKET, SO_REUSEADDR, (char *) &tmp, sizeof (tmp));



  memset (&sin, 0, sizeof (sin));
  sin.sin_family = AF_INET;
  sin.sin_port = htons (7000);

  if (bind (s0, (struct sockaddr *) &sin, sizeof (sin)))
    error ("couldn't bind socket");

  if (listen (s0, 1))
    error ("Couldn't open socket for listening.\n");


  if (!CeCreateProcess (towide (stub_file_name, ((void*)0)), towide (args, ((void*)0)),
   ((void*)0), ((void*)0), 0, 0, ((void*)0), ((void*)0), ((void*)0), &pi))
    error ("Unable to start remote stub '%s'.  Windows CE error %d.",
    stub_file_name, CeGetLastError ());



  if ((s = accept (s0, ((void*)0), ((void*)0))) < 0)
    error ("couldn't set up server for connection.");

  close (s0);
}
