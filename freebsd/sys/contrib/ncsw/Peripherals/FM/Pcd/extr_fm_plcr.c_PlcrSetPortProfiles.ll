; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_PlcrSetPortProfiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_PlcrSetPortProfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i8*, i8* }

@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_PCD_SET_PORT_PROFILES = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@MINOR = common dso_local global i32 0, align 4
@E_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Either IPC or 'baseAddress' is required!\00", align 1
@FM_PCD_PLCR_PMR_V = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"The requesting port has already an allocated profiles window.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PlcrSetPortProfiles(%struct.TYPE_12__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %10, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NCSW_MASTER_ID, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %63, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %29
  %35 = call i32 @memset(%struct.TYPE_11__* %14, i32 0, i32 32)
  %36 = call i32 @memset(%struct.TYPE_11__* %13, i32 0, i32 32)
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* @FM_PCD_SET_PORT_PROFILES, align 4
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32 %46, %struct.TYPE_11__* %13, i32 32)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = bitcast %struct.TYPE_11__* %14 to i32*
  %52 = call i64 @XX_IpcSendMessage(i64 %50, i32* %51, i32 36, i32* null, i32* null, i32* null, i32* null)
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* @E_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %34
  %57 = load i32, i32* @MAJOR, align 4
  %58 = load i64, i64* %15, align 8
  %59 = load i8*, i8** @NO_MSG, align 8
  %60 = call i32 @RETURN_ERROR(i32 %57, i64 %58, i8* %59)
  br label %61

61:                                               ; preds = %56, %34
  %62 = load i64, i64* @E_OK, align 8
  store i64 %62, i64* %5, align 8
  br label %116

63:                                               ; preds = %29, %26, %4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = icmp ne %struct.TYPE_10__* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @MINOR, align 4
  %68 = load i64, i64* @E_NOT_SUPPORTED, align 8
  %69 = call i32 @RETURN_ERROR(i32 %67, i64 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @IN_RANGE(i32 1, i32 %72, i32 63)
  %74 = call i32 @ASSERT_COND(i32 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @GET_UINT32(i32 %82)
  %84 = load i32, i32* @FM_PCD_PLCR_PMR_V, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %71
  %88 = load i32, i32* @MAJOR, align 4
  %89 = load i64, i64* @E_INVALID_VALUE, align 8
  %90 = call i32 @RETURN_ERROR(i32 %88, i64 %89, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %71
  %92 = load i8*, i8** %8, align 8
  %93 = ptrtoint i8* %92 to i32
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @LOG2(i32 %93, i32 %94)
  %96 = load i8*, i8** %9, align 8
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %11, align 4
  %99 = shl i32 %98, 16
  %100 = load i32, i32* %12, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* @FM_PCD_PLCR_PMR_V, align 4
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @WRITE_UINT32(i32 %112, i32 %113)
  %115 = load i64, i64* @E_OK, align 8
  store i64 %115, i64* %5, align 8
  br label %116

116:                                              ; preds = %91, %61
  %117 = load i64, i64* %5, align 8
  ret i64 %117
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @XX_IpcSendMessage(i64, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @IN_RANGE(i32, i32, i32) #1

declare dso_local i32 @GET_UINT32(i32) #1

declare dso_local i32 @LOG2(i32, i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
