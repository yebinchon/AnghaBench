; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_Free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, i32, i64, i32, %struct.TYPE_13__*, i32, i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Trying to free a port with PCD. FM_PORT_DeletePCD must be called first.\00", align 1
@E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"FM_PORT_Disable FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PORT_Free(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %3, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = load i32, i32* @E_INVALID_HANDLE, align 4
  %9 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_14__* %7, i32 %8)
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @MAJOR, align 4
  %16 = load i32, i32* @E_INVALID_STATE, align 4
  %17 = call i32 @RETURN_ERROR(i32 %15, i32 %16, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = call i64 @FM_PORT_Disable(%struct.TYPE_14__* %24)
  %26 = load i64, i64* @E_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @MAJOR, align 4
  %30 = load i32, i32* @E_INVALID_STATE, align 4
  %31 = call i32 @RETURN_ERROR(i32 %29, i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %23
  br label %33

33:                                               ; preds = %32, %18
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = call i32 @FmPortImFree(%struct.TYPE_14__* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = call i32 @FmPortDriverParamFree(%struct.TYPE_14__* %42)
  %44 = call i32 @memset(%struct.TYPE_15__* %4, i32 0, i32 24)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 1
  store i64 %51, i64* %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 6
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @FmFreePortParams(i32 %62, %struct.TYPE_15__* %4)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %41
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @XX_FreeSpinlock(i64 %71)
  br label %73

73:                                               ; preds = %68, %41
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = call i32 @XX_Free(%struct.TYPE_14__* %74)
  %76 = load i64, i64* @E_OK, align 8
  ret i64 %76
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i64 @FM_PORT_Disable(%struct.TYPE_14__*) #1

declare dso_local i32 @FmPortImFree(%struct.TYPE_14__*) #1

declare dso_local i32 @FmPortDriverParamFree(%struct.TYPE_14__*) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @FmFreePortParams(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @XX_FreeSpinlock(i64) #1

declare dso_local i32 @XX_Free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
