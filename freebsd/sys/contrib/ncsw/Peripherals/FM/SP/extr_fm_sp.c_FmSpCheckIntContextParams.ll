; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/SP/extr_fm_sp.c_FmSpCheckIntContextParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/SP/extr_fm_sp.c_FmSpCheckIntContextParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@MAX_INT_OFFSET = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"intContext.intContextOffset can't be larger than %d\00", align 1
@OFFSET_UNITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"intContext.intContextOffset has to be divisible by %d\00", align 1
@MAX_IC_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [72 x i8] c"intContext.size + intContext.intContextOffset has to be smaller than %d\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"intContext.size  has to be divisible by %d\00", align 1
@MAX_EXT_OFFSET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"intContext.extBufOffset can't be larger than %d\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"intContext.extBufOffset  has to be divisible by %d\00", align 1
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmSpCheckIntContextParams(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @MAX_INT_OFFSET, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @MAJOR, align 4
  %10 = load i32, i32* @E_INVALID_VALUE, align 4
  %11 = load i32, i32* @MAX_INT_OFFSET, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @RETURN_ERROR(i32 %9, i32 %10, i8* %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @OFFSET_UNITS, align 4
  %20 = srem i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i32, i32* @MAJOR, align 4
  %24 = load i32, i32* @E_INVALID_VALUE, align 4
  %25 = load i32, i32* @OFFSET_UNITS, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @RETURN_ERROR(i32 %23, i32 %24, i8* %27)
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %32, %36
  %38 = load i64, i64* @MAX_IC_SIZE, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load i32, i32* @MAJOR, align 4
  %42 = load i32, i32* @E_INVALID_VALUE, align 4
  %43 = load i64, i64* @MAX_IC_SIZE, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @RETURN_ERROR(i32 %41, i32 %42, i8* %44)
  br label %46

46:                                               ; preds = %40, %29
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @OFFSET_UNITS, align 4
  %51 = sext i32 %50 to i64
  %52 = srem i64 %49, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i32, i32* @MAJOR, align 4
  %56 = load i32, i32* @E_INVALID_VALUE, align 4
  %57 = load i32, i32* @OFFSET_UNITS, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @RETURN_ERROR(i32 %55, i32 %56, i8* %59)
  br label %61

61:                                               ; preds = %54, %46
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MAX_EXT_OFFSET, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* @MAJOR, align 4
  %69 = load i32, i32* @E_INVALID_VALUE, align 4
  %70 = load i32, i32* @MAX_EXT_OFFSET, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @RETURN_ERROR(i32 %68, i32 %69, i8* %72)
  br label %74

74:                                               ; preds = %67, %61
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @OFFSET_UNITS, align 4
  %79 = srem i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i32, i32* @MAJOR, align 4
  %83 = load i32, i32* @E_INVALID_VALUE, align 4
  %84 = load i32, i32* @OFFSET_UNITS, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @RETURN_ERROR(i32 %82, i32 %83, i8* %86)
  br label %88

88:                                               ; preds = %81, %74
  %89 = load i32, i32* @E_OK, align 4
  ret i32 %89
}

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
