; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_MM_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_MM_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32**, i32*, i64, i64, i32 }

@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Size (should be positive)\00", align 1
@E_NO_MEMORY = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"MM spinlock!\00", align 1
@MM_MAX_ALIGNMENT = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MM_Init(%struct.TYPE_6__** %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @MAJOR, align 4
  %15 = load i32, i32* @E_INVALID_VALUE, align 4
  %16 = call i32 @RETURN_ERROR(i32 %14, i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %3
  %18 = call i64 @XX_Malloc(i32 40)
  %19 = inttoptr i64 %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %7, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @MAJOR, align 4
  %24 = load i32, i32* @E_NO_MEMORY, align 4
  %25 = load i8*, i8** @NO_MSG, align 8
  %26 = call i32 @RETURN_ERROR(i32 %23, i32 %24, i8* %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = call i32 (...) @XX_InitSpinlock()
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = call i32 @XX_Free(%struct.TYPE_6__* %36)
  %38 = load i32, i32* @MAJOR, align 4
  %39 = load i32, i32* @E_NO_MEMORY, align 4
  %40 = call i32 @RETURN_ERROR(i32 %38, i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %27
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32* @CreateNewBlock(i64 %47, i64 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = icmp eq i32* %49, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %41
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = call i32 @MM_Free(%struct.TYPE_6__* %54)
  %56 = load i32, i32* @MAJOR, align 4
  %57 = load i32, i32* @E_NO_MEMORY, align 4
  %58 = load i8*, i8** @NO_MSG, align 8
  %59 = call i32 @RETURN_ERROR(i32 %56, i32 %57, i8* %58)
  br label %60

60:                                               ; preds = %53, %41
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %93, %60
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @MM_MAX_ALIGNMENT, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %61
  %66 = load i64, i64* %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 1, %67
  %69 = call i64 @MAKE_ALIGNED(i64 %66, i32 %68)
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %5, align 8
  %73 = sub nsw i64 %71, %72
  %74 = sub nsw i64 %70, %73
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32* @CreateFreeBlock(i64 %75, i64 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  store i32* %77, i32** %83, align 8
  %84 = icmp eq i32* %77, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %65
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = call i32 @MM_Free(%struct.TYPE_6__* %86)
  %88 = load i32, i32* @MAJOR, align 4
  %89 = load i32, i32* @E_NO_MEMORY, align 4
  %90 = load i8*, i8** @NO_MSG, align 8
  %91 = call i32 @RETURN_ERROR(i32 %88, i32 %89, i8* %90)
  br label %92

92:                                               ; preds = %85, %65
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %61

96:                                               ; preds = %61
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %98, align 8
  %99 = load i32, i32* @E_OK, align 4
  ret i32 %99
}

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @XX_InitSpinlock(...) #1

declare dso_local i32 @XX_Free(%struct.TYPE_6__*) #1

declare dso_local i32* @CreateNewBlock(i64, i64) #1

declare dso_local i32 @MM_Free(%struct.TYPE_6__*) #1

declare dso_local i64 @MAKE_ALIGNED(i64, i32) #1

declare dso_local i32* @CreateFreeBlock(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
