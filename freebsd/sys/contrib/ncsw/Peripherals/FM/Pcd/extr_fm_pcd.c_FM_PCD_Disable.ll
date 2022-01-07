; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FM_PCD_Disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FM_PCD_Disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i8*, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i32 }

@E_OK = common dso_local global i64 0, align 8
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_PCD_GUEST_DISABLE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1
@FALSE = common dso_local global i8* null, align 8
@MINOR = common dso_local global i32 0, align 4
@E_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"running in guest-mode without IPC!\00", align 1
@E_INVALID_STATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [82 x i8] c"Trying to disable a master partition PCD whileguest partitions are still enabled!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PCD_Disable(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  %11 = load i64, i64* @E_OK, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @E_INVALID_HANDLE, align 4
  %14 = call i32 @SANITY_CHECK_RETURN_ERROR(i64 %12, i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i64, i64* @E_OK, align 8
  store i64 %20, i64* %2, align 8
  br label %119

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NCSW_MASTER_ID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %27
  %33 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 16)
  %34 = call i32 @memset(%struct.TYPE_8__* %6, i32 0, i32 16)
  %35 = load i32, i32* @FM_PCD_GUEST_DISABLE, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  store i32 4, i32* %8, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = bitcast %struct.TYPE_8__* %6 to i32*
  %41 = bitcast %struct.TYPE_8__* %7 to i32*
  %42 = call i64 @XX_IpcSendMessage(i64 %39, i32* %40, i32 4, i32* %41, i32* %8, i32* null, i32* null)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* @E_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load i32, i32* @MAJOR, align 4
  %47 = load i64, i64* %5, align 8
  %48 = load i8*, i8** @NO_MSG, align 8
  %49 = call i32 @RETURN_ERROR(i32 %46, i64 %47, i8* %48)
  br label %50

50:                                               ; preds = %45, %32
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 4
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @MAJOR, align 4
  %56 = load i64, i64* @E_INVALID_VALUE, align 8
  %57 = call i32 @RETURN_ERROR(i32 %55, i64 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @E_OK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i8*, i8** @FALSE, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %63, %58
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %2, align 8
  br label %119

70:                                               ; preds = %27, %21
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NCSW_MASTER_ID, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @MINOR, align 4
  %78 = load i64, i64* @E_NOT_SUPPORTED, align 8
  %79 = call i32 @RETURN_ERROR(i32 %77, i64 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @MAJOR, align 4
  %88 = load i64, i64* @E_INVALID_STATE, align 8
  %89 = call i32 @RETURN_ERROR(i32 %87, i64 %88, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %81
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = call i32 @KgDisable(%struct.TYPE_9__* %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = call i32 @PlcrDisable(%struct.TYPE_9__* %104)
  br label %106

106:                                              ; preds = %103, %98
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = call i32 @PrsDisable(%struct.TYPE_9__* %112)
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i8*, i8** @FALSE, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load i64, i64* @E_OK, align 8
  store i64 %118, i64* %2, align 8
  br label %119

119:                                              ; preds = %114, %67, %19
  %120 = load i64, i64* %2, align 8
  ret i64 %120
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i64, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @XX_IpcSendMessage(i64, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @KgDisable(%struct.TYPE_9__*) #1

declare dso_local i32 @PlcrDisable(%struct.TYPE_9__*) #1

declare dso_local i32 @PrsDisable(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
