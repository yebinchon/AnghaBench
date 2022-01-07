; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_file.c_isc_file_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_file.c_isc_file_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@CHAR_BIT = common dso_local global i32 0, align 4
@ISC_R_RANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_file_settime(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x %struct.timeval], align 16
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @REQUIRE(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @isc_time_seconds(i32* %16)
  %18 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i64 0, i64 1
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 16
  %20 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i64 0, i64 0
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  store i64 %17, i64* %21, align 16
  %22 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i64 0, i64 0
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 16
  %25 = load i32, i32* @CHAR_BIT, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = sub i64 %27, 1
  %29 = shl i64 1, %28
  %30 = and i64 %24, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %12
  %33 = load i32, i32* @ISC_R_RANGE, align 4
  store i32 %33, i32* %3, align 4
  br label %52

34:                                               ; preds = %12
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @isc_time_nanoseconds(i32* %35)
  %37 = sdiv i32 %36, 1000
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i64 0, i64 1
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i64 0, i64 0
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %41, i32 0, i32 1
  store i64 %38, i64* %42, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %6, i64 0, i64 0
  %45 = call i64 @utimes(i8* %43, %struct.timeval* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 @isc__errno2result(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %34
  %51 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %47, %32
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @isc_time_seconds(i32*) #1

declare dso_local i32 @isc_time_nanoseconds(i32*) #1

declare dso_local i64 @utimes(i8*, %struct.timeval*) #1

declare dso_local i32 @isc__errno2result(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
