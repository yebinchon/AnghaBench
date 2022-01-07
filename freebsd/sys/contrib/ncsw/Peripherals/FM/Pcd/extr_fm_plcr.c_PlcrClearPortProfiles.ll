; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_PlcrClearPortProfiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_PlcrClearPortProfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32, i32 }

@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_PCD_CLEAR_PORT_PROFILES = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@MINOR = common dso_local global i32 0, align 4
@E_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Either IPC or 'baseAddress' is required!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PlcrClearPortProfiles(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %6, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NCSW_MASTER_ID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %53, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = call i32 @memset(%struct.TYPE_11__* %8, i32 0, i32 12)
  %30 = call i32 @memset(%struct.TYPE_11__* %7, i32 0, i32 12)
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @FM_PCD_CLEAR_PORT_PROFILES, align 4
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i32 %36, %struct.TYPE_11__* %7, i32 12)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = bitcast %struct.TYPE_11__* %8 to i32*
  %42 = call i64 @XX_IpcSendMessage(i64 %40, i32* %41, i32 16, i32* null, i32* null, i32* null, i32* null)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @E_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %28
  %47 = load i32, i32* @MAJOR, align 4
  %48 = load i64, i64* %9, align 8
  %49 = load i8*, i8** @NO_MSG, align 8
  %50 = call i32 @RETURN_ERROR(i32 %47, i64 %48, i8* %49)
  br label %51

51:                                               ; preds = %46, %28
  %52 = load i64, i64* @E_OK, align 8
  store i64 %52, i64* %3, align 8
  br label %75

53:                                               ; preds = %23, %20, %2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @MINOR, align 4
  %58 = load i64, i64* @E_NOT_SUPPORTED, align 8
  %59 = call i32 @RETURN_ERROR(i32 %57, i64 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @IN_RANGE(i32 1, i32 %62, i32 63)
  %64 = call i32 @ASSERT_COND(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @WRITE_UINT32(i32 %72, i32 0)
  %74 = load i64, i64* @E_OK, align 8
  store i64 %74, i64* %3, align 8
  br label %75

75:                                               ; preds = %61, %51
  %76 = load i64, i64* %3, align 8
  ret i64 %76
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @XX_IpcSendMessage(i64, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @IN_RANGE(i32, i32, i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
