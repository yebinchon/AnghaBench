int
main(int argc, char *argv[])
{
 char b[10];
 int len = atoi(argv[1]);

 (void)memmove(b, "1020202020202", len);
 (void)printf("%*.*s\n", len, len, b);

 return 0;
}
