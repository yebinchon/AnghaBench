; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_zstdcli.c_usage_advanced.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_zstdcli.c_usage_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WELCOME_MESSAGE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Advanced arguments : \0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c" -V     : display Version number and exit \0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c" -v     : verbose mode; specify multiple times to increase verbosity\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c" -q     : suppress warnings; specify twice to suppress errors too\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c" -c     : force write to standard output, even if it is the console\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c" -l     : print information about zstd compressed files \0A\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"--exclude-compressed:  only compress files that are not previously compressed \0A\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"--ultra : enable levels beyond %i, up to %i (requires more memory)\0A\00", align 1
@ZSTDCLI_CLEVEL_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [79 x i8] c"--long[=#]: enable long distance matching with given window log (default: %u)\0A\00", align 1
@g_defaultMaxWindowLog = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [66 x i8] c"--fast[=#]: switch to very fast compression levels (default: %u)\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"--adapt : dynamically adapt compression level to I/O conditions \0A\00", align 1
@.str.12 = private unnamed_addr constant [97 x i8] c"--stream-size=# : optimize compression parameters for streaming input of given number of bytes \0A\00", align 1
@.str.13 = private unnamed_addr constant [94 x i8] c"--size-hint=# optimize compression parameters for streaming input of approximately this size\0A\00", align 1
@.str.14 = private unnamed_addr constant [78 x i8] c"--target-compressed-block-size=# : make compressed block near targeted size \0A\00", align 1
@.str.15 = private unnamed_addr constant [71 x i8] c"--no-dictID : don't write dictID into header (dictionary compression)\0A\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"--[no-]check : integrity check (default: enabled) \0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"--[no-]compress-literals : force (un)compressed literals \0A\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"--format=zstd : compress files to the .zst format (default) \0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"--test  : test compressed file integrity \0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"--[no-]sparse : sparse mode (default: disabled)\0A\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c" -M#    : Set a memory usage limit for decompression \0A\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"--no-progress : do not display the progress bar \0A\00", align 1
@.str.23 = private unnamed_addr constant [58 x i8] c"--      : All arguments after \22--\22 are treated as files \0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Dictionary builder : \0A\00", align 1
@.str.25 = private unnamed_addr constant [64 x i8] c"--train ## : create a dictionary from a training set of files \0A\00", align 1
@.str.26 = private unnamed_addr constant [97 x i8] c"--train-cover[=k=#,d=#,steps=#,split=#,shrink[=#]] : use the cover algorithm with optional args\0A\00", align 1
@.str.27 = private unnamed_addr constant [118 x i8] c"--train-fastcover[=k=#,d=#,f=#,steps=#,split=#,accel=#,shrink[=#]] : use the fast cover algorithm with optional args\0A\00", align 1
@.str.28 = private unnamed_addr constant [80 x i8] c"--train-legacy[=s=#] : use the legacy algorithm with selectivity (default: %u)\0A\00", align 1
@g_defaultSelectivityLevel = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [53 x i8] c" -o file : `file` is dictionary name (default: %s) \0A\00", align 1
@g_defaultDictName = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [65 x i8] c"--maxdict=# : limit dictionary to specified size (default: %u) \0A\00", align 1
@g_defaultMaxDictSize = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [71 x i8] c"--dictID=# : force dictionary ID to specified value (default: random)\0A\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"Benchmark arguments : \0A\00", align 1
@.str.33 = private unnamed_addr constant [71 x i8] c" -b#    : benchmark file(s), using # compression level (default: %d) \0A\00", align 1
@ZSTDCLI_CLEVEL_DEFAULT = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [66 x i8] c" -e#    : test all compression levels from -bX to # (default: 1)\0A\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c" -i#    : minimum evaluation time in seconds (default: 3s) \0A\00", align 1
@.str.36 = private unnamed_addr constant [74 x i8] c" -B#    : cut file into independent blocks of size # (default: no block)\0A\00", align 1
@.str.37 = private unnamed_addr constant [52 x i8] c"--priority=rt : set process priority to real-time \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @usage_advanced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage_advanced(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** @WELCOME_MESSAGE, align 8
  %4 = call i32 (i8*, ...) @DISPLAY(i8* %3)
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @usage(i8* %5)
  %7 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.7, i64 0, i64 0))
  %15 = load i32, i32* @ZSTDCLI_CLEVEL_MAX, align 4
  %16 = call i32 (...) @ZSTD_maxCLevel()
  %17 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* @g_defaultMaxWindowLog, align 4
  %19 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.9, i64 0, i64 0), i32 %18)
  %20 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %21 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.12, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.13, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.14, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.15, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.23, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.26, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.27, i64 0, i64 0))
  %39 = load i32, i32* @g_defaultSelectivityLevel, align 4
  %40 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.28, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @g_defaultDictName, align 4
  %42 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @g_defaultMaxDictSize, align 4
  %44 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.30, i64 0, i64 0), i32 %43)
  %45 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.31, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0))
  %48 = load i32, i32* @ZSTDCLI_CLEVEL_DEFAULT, align 4
  %49 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 %48)
  %50 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.34, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.36, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.37, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @ZSTD_maxCLevel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
