; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cn3010-evb-hs5.c_validate_tm_struct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cn3010-evb-hs5.c_validate_tm_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"second\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"minute\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"day of week\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*)* @validate_tm_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_tm_struct(%struct.tm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.tm*, %struct.tm** %3, align 8
  %6 = icmp ne %struct.tm* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %101

8:                                                ; preds = %1
  %9 = load %struct.tm*, %struct.tm** %3, align 8
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load %struct.tm*, %struct.tm** %3, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 60
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ true, %8 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @TM_CHECK(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.tm*, %struct.tm** %3, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = load %struct.tm*, %struct.tm** %3, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 59
  br label %31

31:                                               ; preds = %26, %18
  %32 = phi i1 [ true, %18 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @TM_CHECK(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.tm*, %struct.tm** %3, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load %struct.tm*, %struct.tm** %3, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 23
  br label %44

44:                                               ; preds = %39, %31
  %45 = phi i1 [ true, %31 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @TM_CHECK(i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.tm*, %struct.tm** %3, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = load %struct.tm*, %struct.tm** %3, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 31
  br label %57

57:                                               ; preds = %52, %44
  %58 = phi i1 [ true, %44 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @TM_CHECK(i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.tm*, %struct.tm** %3, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %57
  %66 = load %struct.tm*, %struct.tm** %3, align 8
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 6
  br label %70

70:                                               ; preds = %65, %57
  %71 = phi i1 [ true, %57 ], [ %69, %65 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @TM_CHECK(i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.tm*, %struct.tm** %3, align 8
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = load %struct.tm*, %struct.tm** %3, align 8
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 11
  br label %83

83:                                               ; preds = %78, %70
  %84 = phi i1 [ true, %70 ], [ %82, %78 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @TM_CHECK(i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %87 = load %struct.tm*, %struct.tm** %3, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %83
  %92 = load %struct.tm*, %struct.tm** %3, align 8
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 200
  br label %96

96:                                               ; preds = %91, %83
  %97 = phi i1 [ true, %83 ], [ %95, %91 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @TM_CHECK(i32 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %96, %7
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @TM_CHECK(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
