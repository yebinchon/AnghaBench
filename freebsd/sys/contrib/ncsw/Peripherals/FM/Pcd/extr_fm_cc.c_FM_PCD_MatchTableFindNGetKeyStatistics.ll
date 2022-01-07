; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_MatchTableFindNGetKeyStatistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_MatchTableFindNGetKeyStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@E_NULL_POINTER = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"The received key and mask pair was not found in the match table of the provided node\00", align 1
@NO_MSG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PCD_MatchTableFindNGetKeyStatistics(i64 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %11, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @E_NULL_POINTER, align 4
  %19 = call i32 @SANITY_CHECK_RETURN_ERROR(i32* %17, i32 %18)
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* @E_NULL_POINTER, align 4
  %22 = call i32 @SANITY_CHECK_RETURN_ERROR(i32* %20, i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @XX_LockIntrSpinlock(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @FindKeyIndex(%struct.TYPE_4__* %27, i32 %28, i32* %29, i32* %30, i64* %12)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i64 @GET_ERROR_TYPE(i64 %32)
  %34 = load i64, i64* @E_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %5
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @XX_UnlockIntrSpinlock(i32 %39, i32 %40)
  %42 = load i32, i32* @MAJOR, align 4
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @RETURN_ERROR(i32 %42, i64 %43, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %36, %5
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT_COND(i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i64 @MatchTableGetKeyStatistics(%struct.TYPE_4__* %53, i64 %54, i32* %55)
  store i64 %56, i64* %14, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @XX_UnlockIntrSpinlock(i32 %59, i32 %60)
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @E_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %45
  %66 = load i32, i32* @MAJOR, align 4
  %67 = load i64, i64* %14, align 8
  %68 = load i8*, i8** @NO_MSG, align 8
  %69 = call i32 @RETURN_ERROR(i32 %66, i64 %67, i8* %68)
  br label %70

70:                                               ; preds = %65, %45
  %71 = load i64, i64* @E_OK, align 8
  ret i64 %71
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i32*, i32) #1

declare dso_local i32 @XX_LockIntrSpinlock(i32) #1

declare dso_local i64 @FindKeyIndex(%struct.TYPE_4__*, i32, i32*, i32*, i64*) #1

declare dso_local i64 @GET_ERROR_TYPE(i64) #1

declare dso_local i32 @XX_UnlockIntrSpinlock(i32, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i64 @MatchTableGetKeyStatistics(%struct.TYPE_4__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
