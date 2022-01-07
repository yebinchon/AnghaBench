
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WSAEVENT ;


 int FD_READ ;
 int INFINITE ;
 int WSACloseEvent (scalar_t__) ;
 scalar_t__ WSACreateEvent () ;
 int WSAEventSelect (int,scalar_t__,int ) ;
 int WSAGetLastError () ;
 scalar_t__ WSA_INVALID_EVENT ;
 int WaitForSingleObject (scalar_t__,int ) ;
 int printf (char*,int) ;

void eloop_wait_for_read_sock(int sock)
{
 WSAEVENT event;

 event = WSACreateEvent();
 if (event == WSA_INVALID_EVENT) {
  printf("WSACreateEvent() failed: %d\n", WSAGetLastError());
  return;
 }

 if (WSAEventSelect(sock, event, FD_READ)) {
  printf("WSAEventSelect() failed: %d\n", WSAGetLastError());
  WSACloseEvent(event);
  return ;
 }

 WaitForSingleObject(event, INFINITE);
 WSAEventSelect(sock, event, 0);
 WSACloseEvent(event);
}
