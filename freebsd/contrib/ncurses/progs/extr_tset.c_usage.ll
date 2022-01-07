; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tset.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tset.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usage.tbl = internal global [13 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Options:\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"  -c          set control characters\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"  -e ch       erase character\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"  -I          no initialization strings\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"  -i ch       interrupt character\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"  -k ch       kill character\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"  -m mapping  map identifier to type\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"  -Q          do not output control key settings\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"  -r          display term on stderr\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"  -s          output TERM set command\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"  -V          print curses-version\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"  -w          set window-size\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"Usage: %s [options] [terminal]\0A\00", align 1
@_nc_progname = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @stderr, align 4
  %3 = load i8*, i8** @_nc_progname, align 8
  %4 = call i32 @fprintf(i32 %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %3)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %16, %0
  %6 = load i32, i32* %1, align 4
  %7 = zext i32 %6 to i64
  %8 = icmp ult i64 %7, 13
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i32, i32* @stderr, align 4
  %11 = load i32, i32* %1, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [13 x i8*], [13 x i8*]* @usage.tbl, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %1, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %5

19:                                               ; preds = %5
  %20 = call i32 (...) @exit_error()
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @exit_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
