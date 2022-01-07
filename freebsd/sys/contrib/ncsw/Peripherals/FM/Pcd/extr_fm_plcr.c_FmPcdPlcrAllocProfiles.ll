; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_FmPcdPlcrAllocProfiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_FmPcdPlcrAllocProfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }

@E_OK = common dso_local global i64 0, align 8
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@FM_PCD_PLCR_NUM_ENTRIES = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"numProfiles is too big.\00", align 1
@MAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"numProfiles must be a power of 2.\00", align 1
@TRUE = common dso_local global i64 0, align 8
@E_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"No profiles.\00", align 1
@NO_MSG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmPcdPlcrAllocProfiles(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %8, align 8
  %17 = load i64, i64* @E_OK, align 8
  store i64 %17, i64* %9, align 8
  store i64 0, i64* %14, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = load i32, i32* @E_INVALID_HANDLE, align 4
  %20 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_12__* %18, i32 %19)
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* @E_OK, align 8
  store i64 %24, i64* %4, align 8
  br label %166

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ASSERT_COND(i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @FM_PCD_PLCR_NUM_ENTRIES, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @MINOR, align 4
  %33 = load i64, i64* @E_INVALID_VALUE, align 8
  %34 = call i32 @RETURN_ERROR(i32 %32, i64 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @POWER_OF_2(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @MAJOR, align 4
  %41 = load i64, i64* @E_INVALID_VALUE, align 8
  %42 = call i32 @RETURN_ERROR(i32 %40, i64 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %35
  store i64 0, i64* %13, align 8
  store i64 0, i64* %10, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = call i64 @PlcrSwLock(%struct.TYPE_13__* %46)
  store i64 %47, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %48

48:                                               ; preds = %78, %43
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @FM_PCD_PLCR_NUM_ENTRIES, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %52
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %79

73:                                               ; preds = %64
  br label %78

74:                                               ; preds = %52
  store i64 0, i64* %10, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %75, %76
  store i64 %77, i64* %13, align 8
  store i64 %77, i64* %12, align 8
  br label %78

78:                                               ; preds = %74, %73
  br label %48

79:                                               ; preds = %72, %48
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %79
  %84 = load i64, i64* %13, align 8
  store i64 %84, i64* %12, align 8
  br label %85

85:                                               ; preds = %112, %83
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %87, %88
  %90 = icmp ult i64 %86, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %85
  %92 = load i64, i64* @TRUE, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  store i64 %92, i64* %101, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load i64, i64* %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i32 %102, i32* %111, align 8
  br label %112

112:                                              ; preds = %91
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %12, align 8
  br label %85

115:                                              ; preds = %85
  br label %125

116:                                              ; preds = %79
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = call i32 @PlcrSwUnlock(%struct.TYPE_13__* %119, i64 %120)
  %122 = load i32, i32* @MINOR, align 4
  %123 = load i64, i64* @E_FULL, align 8
  %124 = call i32 @RETURN_ERROR(i32 %122, i64 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %125

125:                                              ; preds = %116, %115
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @PlcrSwUnlock(%struct.TYPE_13__* %128, i64 %129)
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* %13, align 8
  %135 = call i64 @PlcrSetPortProfiles(%struct.TYPE_12__* %131, i32 %132, i64 %133, i64 %134)
  store i64 %135, i64* %9, align 8
  %136 = load i64, i64* %9, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %125
  %139 = load i32, i32* @MAJOR, align 4
  %140 = load i64, i64* %9, align 8
  %141 = load i8*, i8** @NO_MSG, align 8
  %142 = call i32 @RETURN_ERROR(i32 %139, i64 %140, i8* %141)
  br label %143

143:                                              ; preds = %138, %125
  %144 = load i64, i64* %14, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @HW_PORT_ID_TO_SW_PORT_INDX(i64 %144, i32 %145)
  %147 = load i64, i64* %7, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = load i64, i64* %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  store i64 %147, i64* %155, align 8
  %156 = load i64, i64* %13, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  store i64 %156, i64* %164, align 8
  %165 = load i64, i64* @E_OK, align 8
  store i64 %165, i64* %4, align 8
  br label %166

166:                                              ; preds = %143, %23
  %167 = load i64, i64* %4, align 8
  ret i64 %167
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @POWER_OF_2(i64) #1

declare dso_local i64 @PlcrSwLock(%struct.TYPE_13__*) #1

declare dso_local i32 @PlcrSwUnlock(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @PlcrSetPortProfiles(%struct.TYPE_12__*, i32, i64, i64) #1

declare dso_local i32 @HW_PORT_ID_TO_SW_PORT_INDX(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
