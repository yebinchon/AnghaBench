; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_compareResultLT.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_compareResultLT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64 }

@g_optmode = common dso_local global i64 0, align 8
@g_lvltarget = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_7__*, i32, i64)* @compareResultLT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compareResultLT(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %2, i32* %6, align 4
  store i64 %3, i64* %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @feasible(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %66

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @feasible(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %11
  %16 = load i64, i64* @g_optmode, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* @g_lvltarget, align 4
  %20 = call i64 @resultDistLvl(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, i32 %19)
  %21 = load i32, i32* @g_lvltarget, align 4
  %22 = call i64 @resultDistLvl(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1, i32 %21)
  %23 = icmp slt i64 %20, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %87

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %27, %29
  br i1 %30, label %63, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %39, %41
  br i1 %42, label %63, label %43

43:                                               ; preds = %37, %31
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %57, %59
  br label %61

61:                                               ; preds = %55, %49, %43
  %62 = phi i1 [ false, %49 ], [ false, %43 ], [ %60, %55 ]
  br label %63

63:                                               ; preds = %61, %37, %25
  %64 = phi i1 [ true, %37 ], [ true, %25 ], [ %62, %61 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %87

66:                                               ; preds = %11, %4
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @feasible(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @feasible(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @resultScore(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, i64 %75, i32 %76)
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @resultScore(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1, i64 %78, i32 %79)
  %81 = icmp slt i64 %77, %80
  br label %82

82:                                               ; preds = %74, %70
  %83 = phi i1 [ false, %70 ], [ %81, %74 ]
  br label %84

84:                                               ; preds = %82, %66
  %85 = phi i1 [ true, %66 ], [ %83, %82 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %63, %18
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @feasible(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i32) #1

declare dso_local i64 @resultDistLvl(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i32) #1

declare dso_local i64 @resultScore(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
