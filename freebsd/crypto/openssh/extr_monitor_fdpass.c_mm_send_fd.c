int
mm_send_fd(int sock, int fd)
{
 error("%s: file descriptor passing not supported", __func__);
 return -1;

}
