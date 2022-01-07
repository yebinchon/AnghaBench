; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_precision.c_default_get_resolution.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_precision.c_default_get_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64 }
%struct.timezone = type { i32 }

@MINLOOPS = common dso_local global i32 0, align 4
@MAXLOOPS = common dso_local global i32 0, align 4
@DUSECS = common dso_local global i64 0, align 8
@MINSTEP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"resolution = %ld usec after %d loop%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"     (Boy this machine is fast ! %d loops without a step)\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"     (The resolution is less than the time to read the clock -- Assume 1us)\0A\00", align 1
@HUSECS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [55 x i8] c"     (Oh dear -- that wasn't expected ! I'll guess !)\0A\00", align 1
@DEFAULT_SYS_PRECISION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_get_resolution() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timezone, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MINLOOPS, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @gettimeofday(%struct.timeval* %2, %struct.timezone* %3)
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %8, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %45, %0
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MAXLOOPS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = call i32 @gettimeofday(%struct.timeval* %2, %struct.timezone* %3)
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = sub nsw i64 %23, %24
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i64, i64* @DUSECS, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @MINSTEP, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %8, align 4
  %39 = icmp sle i32 %37, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %48

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %32
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %16

48:                                               ; preds = %40, %16
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 1
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %49, i32 %50, i8* %54)
  %56 = load i64, i64* %6, align 8
  %57 = mul nsw i64 %56, 3
  %58 = sdiv i64 %57, 2
  store i64 %58, i64* %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @MAXLOOPS, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i32, i32* @MAXLOOPS, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  store i64 1, i64* %6, align 8
  br label %65

65:                                               ; preds = %62, %48
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0))
  store i64 1, i64* %6, align 8
  br label %70

70:                                               ; preds = %68, %65
  store i32 0, i32* %5, align 4
  %71 = load i64, i64* @HUSECS, align 8
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %82, %70
  %73 = load i64, i64* %7, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %1, align 4
  br label %90

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %5, align 4
  %85 = load i64, i64* %7, align 8
  %86 = ashr i64 %85, 1
  store i64 %86, i64* %7, align 8
  br label %72

87:                                               ; preds = %72
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* @DEFAULT_SYS_PRECISION, align 4
  store i32 %89, i32* %1, align 4
  br label %90

90:                                               ; preds = %87, %79
  %91 = load i32, i32* %1, align 4
  ret i32 %91
}

declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
