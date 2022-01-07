; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_DetachPCD.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_DetachPCD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64, i32, i64, i32 }

@E_OK = common dso_local global i64 0, align 8
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_OPERATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"available for non-independent mode ports only\00", align 1
@e_FM_PORT_TYPE_RX_10G = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_RX = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_OH_OFFLINE_PARSING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"available for Rx and offline parsing ports only\00", align 1
@TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"FM Port Try Lock - BUSY\00", align 1
@E_BUSY = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@FM_PCD_CC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PORT_DetachPCD(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %4, align 8
  %9 = load i64, i64* @E_OK, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @E_INVALID_HANDLE, align 4
  %12 = call i32 @SANITY_CHECK_RETURN_ERROR(i32 %10, i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @E_INVALID_STATE, align 4
  %20 = call i32 @SANITY_CHECK_RETURN_ERROR(i32 %18, i32 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @MAJOR, align 4
  %27 = load i64, i64* @E_INVALID_OPERATION, align 8
  %28 = call i32 @RETURN_ERROR(i32 %26, i64 %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @e_FM_PORT_TYPE_OH_OFFLINE_PARSING, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @MAJOR, align 4
  %49 = load i64, i64* @E_INVALID_OPERATION, align 8
  %50 = call i32 @RETURN_ERROR(i32 %48, i64 %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %41, %35, %29
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = call i32 @TRY_LOCK(i32 %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @TRACE, align 4
  %61 = call i32 @DBG(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @E_BUSY, align 4
  %63 = call i64 @ERROR_CODE(i32 %62)
  store i64 %63, i64* %2, align 8
  br label %97

64:                                               ; preds = %51
  %65 = load i32, i32* %3, align 4
  %66 = call i64 @DetachPCD(i32 %65)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @E_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @RELEASE_LOCK(i32 %73)
  %75 = load i32, i32* @MAJOR, align 4
  %76 = load i64, i64* %5, align 8
  %77 = load i8*, i8** @NO_MSG, align 8
  %78 = call i32 @RETURN_ERROR(i32 %75, i64 %76, i8* %77)
  br label %79

79:                                               ; preds = %70, %64
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i32, i32* @FM_PCD_CC, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %84, %79
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @RELEASE_LOCK(i32 %94)
  %96 = load i64, i64* @E_OK, align 8
  store i64 %96, i64* %2, align 8
  br label %97

97:                                               ; preds = %91, %59
  %98 = load i64, i64* %2, align 8
  ret i64 %98
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i32, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @TRY_LOCK(i32, i32*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i64 @ERROR_CODE(i32) #1

declare dso_local i64 @DetachPCD(i32) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
