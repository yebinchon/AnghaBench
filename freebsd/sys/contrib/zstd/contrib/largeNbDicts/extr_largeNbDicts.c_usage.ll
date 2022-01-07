; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c" %s [Options] filename(s) \0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Options : \0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"-r          : recursively load all files in subdirectories (default: off) \0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"-B#         : split input into blocks of size # (default: no split) \0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"-#          : use compression level # (default: %u) \0A\00", align 1
@CLEVEL_DEFAULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"-D #        : use # as a dictionary (default: create one) \0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"-i#         : nb benchmark rounds (default: %u) \0A\00", align 1
@BENCH_TIME_DEFAULT_S = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [63 x i8] c"--nbBlocks=#: use # blocks for bench (default: one per file) \0A\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"--nbDicts=# : create # dictionaries for bench (default: one per block) \0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"-h          : help (this text) \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  %6 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  %10 = load i32, i32* @CLEVEL_DEFAULT, align 4
  %11 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %10)
  %12 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  %13 = load i32, i32* @BENCH_TIME_DEFAULT_S, align 4
  %14 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %13)
  %15 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DISPLAY(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
