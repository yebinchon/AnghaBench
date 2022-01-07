; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_MM_GetForce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_MM_GetForce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_7__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ILLEGAL_BASE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MM_GetForce(i64 %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %10, align 8
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = call i32 @ASSERT_COND(%struct.TYPE_6__* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @XX_LockIntrSpinlock(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %26, i64 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %11, align 8
  br label %29

29:                                               ; preds = %52, %4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %14, align 4
  br label %53

48:                                               ; preds = %38, %32
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %11, align 8
  br label %52

52:                                               ; preds = %48
  br label %29

53:                                               ; preds = %46, %29
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @XX_UnlockIntrSpinlock(i32 %59, i32 %60)
  %62 = load i32, i32* @ILLEGAL_BASE, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %5, align 8
  br label %114

64:                                               ; preds = %53
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i32* @CreateBusyBlock(i64 %65, i64 %66, i8* %67)
  store i32* %68, i32** %12, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @XX_UnlockIntrSpinlock(i32 %73, i32 %74)
  %76 = load i32, i32* @ILLEGAL_BASE, align 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %5, align 8
  br label %114

78:                                               ; preds = %64
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i64 @CutFree(%struct.TYPE_6__* %79, i64 %80, i64 %83)
  %85 = load i64, i64* @E_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %78
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @XX_UnlockIntrSpinlock(i32 %90, i32 %91)
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @XX_Free(i32* %93)
  %95 = load i32, i32* @ILLEGAL_BASE, align 4
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %5, align 8
  br label %114

97:                                               ; preds = %78
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @AddBusy(%struct.TYPE_6__* %105, i32* %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @XX_UnlockIntrSpinlock(i32 %110, i32 %111)
  %113 = load i64, i64* %7, align 8
  store i64 %113, i64* %5, align 8
  br label %114

114:                                              ; preds = %97, %87, %70, %56
  %115 = load i64, i64* %5, align 8
  ret i64 %115
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_6__*) #1

declare dso_local i32 @XX_LockIntrSpinlock(i32) #1

declare dso_local i32 @XX_UnlockIntrSpinlock(i32, i32) #1

declare dso_local i32* @CreateBusyBlock(i64, i64, i8*) #1

declare dso_local i64 @CutFree(%struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @XX_Free(i32*) #1

declare dso_local i32 @AddBusy(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
