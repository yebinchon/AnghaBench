; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Usage: %s [OPTION]... PATTERN [FILE]...\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Try `%s --help' for more information.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Usage: %s [OPTION]... PATTERN [FILE] ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [133 x i8] c"Search for PATTERN in each FILE or standard input.\0AExample: %s -i 'hello world' menu.h main.c\0A\0ARegexp selection and interpretation:\0A\00", align 1
@.str.4 = private unnamed_addr constant [276 x i8] c"  -E, --extended-regexp     PATTERN is an extended regular expression\0A  -F, --fixed-strings       PATTERN is a set of newline-separated strings\0A  -G, --basic-regexp        PATTERN is a basic regular expression\0A  -P, --perl-regexp         PATTERN is a Perl regular expression\0A\00", align 1
@.str.5 = private unnamed_addr constant [375 x i8] c"  -e, --regexp=PATTERN      use PATTERN as a regular expression\0A  -f, --file=FILE           obtain PATTERN from FILE\0A  -i, --ignore-case         ignore case distinctions\0A  -w, --word-regexp         force PATTERN to match only whole words\0A  -x, --line-regexp         force PATTERN to match only whole lines\0A  -z, --null-data           a data line ends in 0 byte, not newline\0A\00", align 1
@.str.6 = private unnamed_addr constant [452 x i8] c"\0AMiscellaneous:\0A  -s, --no-messages         suppress error messages\0A  -v, --invert-match        select non-matching lines\0A  -V, --version             print version information and exit\0A      --help                display this help and exit\0A  -J, --bz2decompress       decompress bzip2'ed input before searching\0A  -Z, --decompress          decompress input before searching (HAVE_LIBZ=1)\0A      --mmap                use memory-mapped input if possible\0A\00", align 1
@.str.7 = private unnamed_addr constant [1653 x i8] c"\0AOutput control:\0A  -m, --max-count=NUM       stop after NUM matches\0A  -b, --byte-offset         print the byte offset with output lines\0A  -n, --line-number         print line number with output lines\0A      --line-buffered       flush output on every line\0A  -H, --with-filename       print the filename for each match\0A  -h, --no-filename         suppress the prefixing filename on output\0A      --label=LABEL         print LABEL as filename for standard input\0A  -o, --only-matching       show only the part of a line matching PATTERN\0A  -q, --quiet, --silent     suppress all normal output\0A      --binary-files=TYPE   assume that binary files are TYPE\0A                            TYPE is 'binary', 'text', or 'without-match'\0A  -a, --text                equivalent to --binary-files=text\0A  -I                        equivalent to --binary-files=without-match\0A  -d, --directories=ACTION  how to handle directories\0A                            ACTION is 'read', 'recurse', or 'skip'\0A  -D, --devices=ACTION      how to handle devices, FIFOs and sockets\0A                            ACTION is 'read' or 'skip'\0A  -R, -r, --recursive       equivalent to --directories=recurse\0A      --include=PATTERN     files that match PATTERN will be examined\0A      --exclude=PATTERN     files that match PATTERN will be skipped.\0A      --exclude-from=FILE   files that match PATTERN in FILE will be skipped.\0A  -L, --files-without-match only print FILE names containing no match\0A  -l, --files-with-matches  only print FILE names containing matches\0A  -c, --count               only print a count of matching lines per FILE\0A      --null                print 0 byte after FILE name\0A\00", align 1
@.str.8 = private unnamed_addr constant [779 x i8] c"\0AContext control:\0A  -B, --before-context=NUM  print NUM lines of leading context\0A  -A, --after-context=NUM   print NUM lines of trailing context\0A  -C, --context=NUM         print NUM lines of output context\0A  -NUM                      same as --context=NUM\0A      --color[=WHEN],\0A      --colour[=WHEN]       use markers to distinguish the matching string\0A                            WHEN may be `always', `never' or `auto'.\0A  -U, --binary              do not strip CR characters at EOL (MSDOS)\0A  -u, --unix-byte-offsets   report offsets as if CRs were not there (MSDOS)\0A\0A`egrep' means `grep -E'.  `fgrep' means `grep -F'.\0AWith no FILE, or when FILE is -, read standard input.  If less than\0Atwo FILEs given, assume -h.  Exit status is 0 if match, 1 if no match,\0Aand 2 if trouble.\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\0AReport bugs to <bug-gnu-utils@gnu.org>.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %8 = load i8*, i8** @program_name, align 8
  %9 = call i32 @fprintf(i32 %6, i8* %7, i8* %8)
  %10 = load i32, i32* @stderr, align 4
  %11 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i8*, i8** @program_name, align 8
  %13 = call i32 @fprintf(i32 %10, i8* %11, i8* %12)
  br label %33

14:                                               ; preds = %1
  %15 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i8*, i8** @program_name, align 8
  %17 = call i32 (i8*, ...) @printf(i8* %15, i8* %16)
  %18 = call i8* @_(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i8*, i8** @program_name, align 8
  %20 = call i32 (i8*, ...) @printf(i8* %18, i8* %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([276 x i8], [276 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* %21)
  %23 = call i8* @_(i8* getelementptr inbounds ([375 x i8], [375 x i8]* @.str.5, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* %23)
  %25 = call i8* @_(i8* getelementptr inbounds ([452 x i8], [452 x i8]* @.str.6, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* %25)
  %27 = call i8* @_(i8* getelementptr inbounds ([1653 x i8], [1653 x i8]* @.str.7, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* %27)
  %29 = call i8* @_(i8* getelementptr inbounds ([779 x i8], [779 x i8]* @.str.8, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* %29)
  %31 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* %31)
  br label %33

33:                                               ; preds = %14, %5
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @exit(i32 %34) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
