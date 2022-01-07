; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wctrans.c_wctrans_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wctrans.c_wctrans_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"tolower\00", align 1
@_WCT_TOLOWER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"toupper\00", align 1
@_WCT_TOUPPER = common dso_local global i64 0, align 8
@_WCT_ERROR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wctrans_l(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x %struct.anon], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* %5, i64 0, i64 0
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 16
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %10 = load i64, i64* @_WCT_TOLOWER, align 8
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %7, i64 1
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 16
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %14 = load i64, i64* @_WCT_TOUPPER, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %11, i64 1
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 0
  store i8* null, i8** %16, align 16
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  %18 = load i64, i64* @_WCT_ERROR, align 8
  store i64 %18, i64* %17, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %37, %2
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* %5, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 16
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* %5, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 16
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @strcmp(i8* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %26, %19
  %36 = phi i1 [ false, %19 ], [ %34, %26 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %19

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* %5, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @_WCT_ERROR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* @errno, align 4
  br label %50

50:                                               ; preds = %48, %40
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* %5, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  ret i64 %55
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
