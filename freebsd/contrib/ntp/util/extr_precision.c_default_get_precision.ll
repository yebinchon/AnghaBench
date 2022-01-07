; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_precision.c_default_get_precision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_precision.c_default_get_precision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.timezone = type { i32 }

@MAXSTEP = common dso_local global i64 0, align 8
@MINLOOPS = common dso_local global i32 0, align 4
@HUSECS = common dso_local global i64 0, align 8
@DUSECS = common dso_local global i64 0, align 8
@MINSTEP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"precision  = %ld usec after %d loop%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"     (Boy this machine is fast ! usec was %ld)\0A\00", align 1
@TIMEOFDAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_get_precision() #0 {
  %1 = alloca %struct.timeval, align 4
  %2 = alloca %struct.timezone, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 0, i64* %7, align 8
  %8 = load i64, i64* @MAXSTEP, align 8
  store i64 %8, i64* %6, align 8
  %9 = call i32 @GETTIMEOFDAY(%struct.timeval* %1, %struct.timezone* %2)
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %55, %0
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MINLOOPS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @HUSECS, align 8
  %20 = icmp slt i64 %18, %19
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %56

23:                                               ; preds = %21
  %24 = call i32 @GETTIMEOFDAY(%struct.timeval* %1, %struct.timezone* %2)
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %3, align 8
  %29 = sub nsw i64 %27, %28
  store i64 %29, i64* %5, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i64, i64* @DUSECS, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %35, %23
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @MINSTEP, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i64, i64* %5, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %52, %46
  br label %55

55:                                               ; preds = %54, %39
  br label %13

56:                                               ; preds = %21
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 1
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %63 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %57, i32 %58, i8* %62)
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @HUSECS, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load i64, i64* %7, align 8
  %69 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* @MINSTEP, align 8
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %67, %56
  %72 = load i64, i64* @HUSECS, align 8
  store i64 %72, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %80, %71
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i64, i64* %5, align 8
  %79 = ashr i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %4, align 4
  br label %73

83:                                               ; preds = %73
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @GETTIMEOFDAY(%struct.timeval*, %struct.timezone*) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
