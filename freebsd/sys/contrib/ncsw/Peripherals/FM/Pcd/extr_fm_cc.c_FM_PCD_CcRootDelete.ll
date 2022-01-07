; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_CcRootDelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_CcRootDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i64, i64, %struct.TYPE_18__*, %struct.TYPE_13__*, i64, i64, i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@E_INVALID_STATE = common dso_local global i64 0, align 8
@E_INVALID_HANDLE = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_SELECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"the tree with this ID can not be removed because this tree is occupied, first - unbind this tree\00", align 1
@FALSE = common dso_local global i32 0, align 4
@e_FM_PCD_CC = common dso_local global i64 0, align 8
@E_OK = common dso_local global i64 0, align 8
@e_FM_PCD_FR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PCD_CcRootDelete(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %7, %struct.TYPE_19__** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %9 = load i64, i64* @E_INVALID_STATE, align 8
  %10 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_19__* %8, i64 %9)
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %3, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = load i64, i64* @E_INVALID_HANDLE, align 8
  %17 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_19__* %15, i64 %16)
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @FmPcdDecNetEnvOwners(%struct.TYPE_19__* %18, i32 %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @MAJOR, align 4
  %29 = load i32, i32* @E_INVALID_SELECTION, align 4
  %30 = call i32 @RETURN_ERROR(i32 %28, i32 %29, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @FmPcdManipDeleteIpReassmSchemes(i64 %39)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @FmPcdManipUpdateOwner(i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %31
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @FmPcdManipDeleteCapwapReassmSchemes(i64 %54)
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i32 @FmPcdManipUpdateOwner(i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %51, %46
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %118, %61
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %121

68:                                               ; preds = %62
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @e_FM_PCD_CC, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %68
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @FALSE, align 4
  %93 = call i32 @UpdateNodeOwner(i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %80, %68
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %94
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @FALSE, align 4
  %116 = call i32 @FmPcdManipUpdateOwner(i64 %114, i32 %115)
  br label %117

117:                                              ; preds = %105, %94
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %62

121:                                              ; preds = %62
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @FmPcdReleaseLock(i64 %129, i64 %132)
  br label %134

134:                                              ; preds = %126, %121
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %137 = call i32 @DeleteTree(%struct.TYPE_19__* %135, %struct.TYPE_19__* %136)
  %138 = load i64, i64* @E_OK, align 8
  ret i64 %138
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @FmPcdDecNetEnvOwners(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @FmPcdManipDeleteIpReassmSchemes(i64) #1

declare dso_local i32 @FmPcdManipUpdateOwner(i64, i32) #1

declare dso_local i32 @FmPcdManipDeleteCapwapReassmSchemes(i64) #1

declare dso_local i32 @UpdateNodeOwner(i64, i32) #1

declare dso_local i32 @FmPcdReleaseLock(i64, i64) #1

declare dso_local i32 @DeleteTree(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
