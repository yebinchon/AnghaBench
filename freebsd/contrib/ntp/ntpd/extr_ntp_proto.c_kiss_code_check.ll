; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_kiss_code_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_kiss_code_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_SERVER = common dso_local global i64 0, align 8
@LEAP_NOTINSYNC = common dso_local global i64 0, align 8
@STRATUM_UNSPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"RATE\00", align 1
@RATEKISS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"DENY\00", align 1
@DENYKISS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"RSTR\00", align 1
@RSTRKISS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@XKISS = common dso_local global i32 0, align 4
@NOKISS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kiss_code_check(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @MODE_SERVER, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @LEAP_NOTINSYNC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @STRATUM_UNSPEC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = call i64 @memcmp(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @RATEKISS, align 4
  store i32 %25, i32* %5, align 4
  br label %47

26:                                               ; preds = %21
  %27 = call i64 @memcmp(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @DENYKISS, align 4
  store i32 %30, i32* %5, align 4
  br label %47

31:                                               ; preds = %26
  %32 = call i64 @memcmp(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @RSTRKISS, align 4
  store i32 %35, i32* %5, align 4
  br label %47

36:                                               ; preds = %31
  %37 = call i64 @memcmp(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @XKISS, align 4
  store i32 %40, i32* %5, align 4
  br label %47

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44, %17, %13, %4
  %46 = load i32, i32* @NOKISS, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %39, %34, %29, %24
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
