; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usage.tbl = internal constant [25 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Options:\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"  -1         format translation output one capability per line\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"  -K         translate entries to termcap source form with BSD syntax\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"  -C         translate entries to termcap source form\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"  -D         print list of tic's database locations (first must be writable)\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"  -c         check only, validate input without compiling or translating\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"  -e<names>  translate/compile only entries named by comma-separated list\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"  -f         format complex strings for readability\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"  -G         format %{number} to %'char'\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"  -g         format %'char' to %{number}\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"  -I         translate entries to terminfo source form\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"  -L         translate entries to full terminfo source form\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"  -N         disable smart defaults for source translation\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"  -o<dir>    set output directory for compiled entry writes\00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"  -R<name>   restrict translation to given terminfo/termcap version\00", align 1
@.str.15 = private unnamed_addr constant [71 x i8] c"  -r         force resolution of all use entries in source translation\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"  -s         print summary statistics\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"  -T         remove size-restrictions on compiled description\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"  -U         suppress post-processing of entries\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"  -V         print version\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"  -v[n]      set verbosity level\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"  -w[n]      set format width for translation output\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Parameters:\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"  <file>     file to translate or compile\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"Usage: %s %s\0A\00", align 1
@_nc_progname = common dso_local global i8* null, align 8
@usage_string = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @stderr, align 4
  %3 = load i8*, i8** @_nc_progname, align 8
  %4 = load i8*, i8** @usage_string, align 8
  %5 = call i32 @fprintf(i32 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* %3, i8* %4)
  store i64 0, i64* %1, align 8
  br label %6

6:                                                ; preds = %18, %0
  %7 = load i64, i64* %1, align 8
  %8 = call i64 @SIZEOF(i8** getelementptr inbounds ([25 x i8*], [25 x i8*]* @usage.tbl, i64 0, i64 0))
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load i64, i64* %1, align 8
  %12 = getelementptr inbounds [25 x i8*], [25 x i8*]* @usage.tbl, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fputs(i8* %13, i32 %14)
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @putc(i8 signext 10, i32 %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i64, i64* %1, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %1, align 8
  br label %6

21:                                               ; preds = %6
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @ExitProgram(i32 %22)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i64 @SIZEOF(i8**) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @ExitProgram(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
