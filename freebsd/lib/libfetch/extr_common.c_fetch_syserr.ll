; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_syserr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_syserr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@FETCH_OK = common dso_local global i32 0, align 4
@fetchLastErrCode = common dso_local global i32 0, align 4
@FETCH_AUTH = common dso_local global i32 0, align 4
@FETCH_UNAVAIL = common dso_local global i32 0, align 4
@FETCH_MEMORY = common dso_local global i32 0, align 4
@FETCH_TEMP = common dso_local global i32 0, align 4
@FETCH_EXISTS = common dso_local global i32 0, align 4
@FETCH_FULL = common dso_local global i32 0, align 4
@FETCH_NETWORK = common dso_local global i32 0, align 4
@FETCH_ABORT = common dso_local global i32 0, align 4
@FETCH_TIMEOUT = common dso_local global i32 0, align 4
@FETCH_DOWN = common dso_local global i32 0, align 4
@FETCH_UNKNOWN = common dso_local global i32 0, align 4
@fetchLastErrString = common dso_local global i32 0, align 4
@MAXERRSTRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fetch_syserr() #0 {
  %1 = load i32, i32* @errno, align 4
  switch i32 %1, label %24 [
    i32 0, label %2
    i32 130, label %4
    i32 150, label %4
    i32 129, label %4
    i32 146, label %4
    i32 137, label %4
    i32 133, label %6
    i32 138, label %6
    i32 132, label %8
    i32 145, label %10
    i32 147, label %10
    i32 141, label %12
    i32 131, label %14
    i32 149, label %16
    i32 148, label %16
    i32 136, label %16
    i32 134, label %16
    i32 135, label %16
    i32 139, label %16
    i32 144, label %18
    i32 142, label %18
    i32 128, label %20
    i32 143, label %22
    i32 140, label %22
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* @FETCH_OK, align 4
  store i32 %3, i32* @fetchLastErrCode, align 4
  br label %26

4:                                                ; preds = %0, %0, %0, %0, %0
  %5 = load i32, i32* @FETCH_AUTH, align 4
  store i32 %5, i32* @fetchLastErrCode, align 4
  br label %26

6:                                                ; preds = %0, %0
  %7 = load i32, i32* @FETCH_UNAVAIL, align 4
  store i32 %7, i32* @fetchLastErrCode, align 4
  br label %26

8:                                                ; preds = %0
  %9 = load i32, i32* @FETCH_MEMORY, align 4
  store i32 %9, i32* @fetchLastErrCode, align 4
  br label %26

10:                                               ; preds = %0, %0
  %11 = load i32, i32* @FETCH_TEMP, align 4
  store i32 %11, i32* @fetchLastErrCode, align 4
  br label %26

12:                                               ; preds = %0
  %13 = load i32, i32* @FETCH_EXISTS, align 4
  store i32 %13, i32* @fetchLastErrCode, align 4
  br label %26

14:                                               ; preds = %0
  %15 = load i32, i32* @FETCH_FULL, align 4
  store i32 %15, i32* @fetchLastErrCode, align 4
  br label %26

16:                                               ; preds = %0, %0, %0, %0, %0, %0
  %17 = load i32, i32* @FETCH_NETWORK, align 4
  store i32 %17, i32* @fetchLastErrCode, align 4
  br label %26

18:                                               ; preds = %0, %0
  %19 = load i32, i32* @FETCH_ABORT, align 4
  store i32 %19, i32* @fetchLastErrCode, align 4
  br label %26

20:                                               ; preds = %0
  %21 = load i32, i32* @FETCH_TIMEOUT, align 4
  store i32 %21, i32* @fetchLastErrCode, align 4
  br label %26

22:                                               ; preds = %0, %0
  %23 = load i32, i32* @FETCH_DOWN, align 4
  store i32 %23, i32* @fetchLastErrCode, align 4
  br label %26

24:                                               ; preds = %0
  %25 = load i32, i32* @FETCH_UNKNOWN, align 4
  store i32 %25, i32* @fetchLastErrCode, align 4
  br label %26

26:                                               ; preds = %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4, %2
  %27 = load i32, i32* @fetchLastErrString, align 4
  %28 = load i32, i32* @MAXERRSTRING, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i8* @strerror(i32 %29)
  %31 = call i32 @snprintf(i32 %27, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %30)
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
