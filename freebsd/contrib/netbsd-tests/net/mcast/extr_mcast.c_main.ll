; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/mcast/extr_mcast.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/mcast/extr_mcast.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_V4 = common dso_local global i8* null, align 8
@PORT_V4 = common dso_local global i8* null, align 8
@TOTAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"46bcdmn:\00", align 1
@HOST_V6 = common dso_local global i8* null, align 8
@PORT_V6 = common dso_local global i8* null, align 8
@debug = common dso_local global i32 0, align 4
@HOST_V4MAPPED = common dso_local global i8* null, align 8
@PORT_V4MAPPED = common dso_local global i8* null, align 8
@optarg = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [-cdm46] [-n <tot>]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i8*, i8** @HOST_V4, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** @PORT_V4, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i64, i64* @TOTAL, align 8
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %43, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %39 [
    i32 52, label %22
    i32 54, label %25
    i32 98, label %28
    i32 99, label %29
    i32 100, label %30
    i32 109, label %33
    i32 110, label %36
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @HOST_V4, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** @PORT_V4, align 8
  store i8* %24, i8** %7, align 8
  br label %43

25:                                               ; preds = %20
  %26 = load i8*, i8** @HOST_V6, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** @PORT_V6, align 8
  store i8* %27, i8** %7, align 8
  br label %43

28:                                               ; preds = %20
  store i32 1, i32* %11, align 4
  br label %43

29:                                               ; preds = %20
  store i32 1, i32* %10, align 4
  br label %43

30:                                               ; preds = %20
  %31 = load i32, i32* @debug, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @debug, align 4
  br label %43

33:                                               ; preds = %20
  %34 = load i8*, i8** @HOST_V4MAPPED, align 8
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** @PORT_V4MAPPED, align 8
  store i8* %35, i8** %7, align 8
  br label %43

36:                                               ; preds = %20
  %37 = load i32, i32* @optarg, align 4
  %38 = call i64 @atoi(i32 %37)
  store i64 %38, i64* %9, align 8
  br label %43

39:                                               ; preds = %20
  %40 = load i32, i32* @stderr, align 4
  %41 = call i8* (...) @getprogname()
  %42 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  store i32 1, i32* %3, align 4
  br label %51

43:                                               ; preds = %36, %33, %30, %29, %28, %25, %22
  br label %15

44:                                               ; preds = %15
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @run(i8* %45, i8* %46, i64 %47, i32 %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %39
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @atoi(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i32 @run(i8*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
