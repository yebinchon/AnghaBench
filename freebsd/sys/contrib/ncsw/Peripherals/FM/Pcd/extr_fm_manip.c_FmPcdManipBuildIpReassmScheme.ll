; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_FmPcdManipBuildIpReassmScheme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_FmPcdManipBuildIpReassmScheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_32__*, %struct.TYPE_32__*, i64* }
%struct.TYPE_33__ = type { i32, i32, i32, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_32__* }

@E_OK = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Memory allocation failed for scheme\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmPcdManipBuildIpReassmScheme(%struct.TYPE_32__* %0, %struct.TYPE_32__* %1, %struct.TYPE_32__* %2, %struct.TYPE_32__* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca %struct.TYPE_33__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %8, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %9, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %10, align 8
  store %struct.TYPE_32__* %3, %struct.TYPE_32__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  store %struct.TYPE_32__* %17, %struct.TYPE_32__** %14, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %15, align 8
  %18 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %19 = call i32 @ASSERT_COND(%struct.TYPE_32__* %18)
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %21 = call i32 @ASSERT_COND(%struct.TYPE_32__* %20)
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %23 = call i32 @ASSERT_COND(%struct.TYPE_32__* %22)
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %27, align 8
  %29 = icmp ne %struct.TYPE_32__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* @E_OK, align 4
  store i32 %31, i32* %7, align 4
  br label %153

32:                                               ; preds = %6
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.TYPE_32__* @FmPcdKgGetSchemeHandle(%struct.TYPE_32__* %36, i64 %43)
  store %struct.TYPE_32__* %44, %struct.TYPE_32__** %16, align 8
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %46 = icmp ne %struct.TYPE_32__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 1
  store %struct.TYPE_32__* %48, %struct.TYPE_32__** %52, align 8
  %53 = load i32, i32* @E_OK, align 4
  store i32 %53, i32* %7, align 4
  br label %153

54:                                               ; preds = %35
  br label %75

55:                                               ; preds = %32
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.TYPE_32__* @FmPcdKgGetSchemeHandle(%struct.TYPE_32__* %56, i64 %63)
  store %struct.TYPE_32__* %64, %struct.TYPE_32__** %16, align 8
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %66 = icmp ne %struct.TYPE_32__* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %55
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 0
  store %struct.TYPE_32__* %68, %struct.TYPE_32__** %72, align 8
  %73 = load i32, i32* @E_OK, align 4
  store i32 %73, i32* %7, align 4
  br label %153

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74, %54
  %76 = call %struct.TYPE_33__* @XX_Malloc(i32 40)
  store %struct.TYPE_33__* %76, %struct.TYPE_33__** %15, align 8
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %78 = icmp ne %struct.TYPE_33__* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @MAJOR, align 4
  %81 = load i32, i32* @E_NO_MEMORY, align 4
  %82 = call i32 @RETURN_ERROR(i32 %80, i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %85 = call i32 @memset(%struct.TYPE_33__* %84, i32 0, i32 40)
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  store %struct.TYPE_32__* %86, %struct.TYPE_32__** %89, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @TRUE, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %83
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  %100 = load i64, i64* %99, align 8
  br label %109

101:                                              ; preds = %83
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = load i64, i64* %107, align 8
  br label %109

109:                                              ; preds = %101, %93
  %110 = phi i64 [ %100, %93 ], [ %108, %101 ]
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  %114 = load i32, i32* @TRUE, align 4
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 4
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 2
  store i32 16777215, i32* %122, align 8
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load i64, i64* %13, align 8
  %128 = call i32 @setIpReassmSchemeParams(%struct.TYPE_32__* %123, %struct.TYPE_33__* %124, %struct.TYPE_32__* %125, i32 %126, i64 %127)
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %109
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %134 = call i8* @FM_PCD_KgSchemeSet(%struct.TYPE_32__* %132, %struct.TYPE_33__* %133)
  %135 = bitcast i8* %134 to %struct.TYPE_32__*
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 1
  store %struct.TYPE_32__* %135, %struct.TYPE_32__** %139, align 8
  br label %149

140:                                              ; preds = %109
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %143 = call i8* @FM_PCD_KgSchemeSet(%struct.TYPE_32__* %141, %struct.TYPE_33__* %142)
  %144 = bitcast i8* %143 to %struct.TYPE_32__*
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 0
  store %struct.TYPE_32__* %144, %struct.TYPE_32__** %148, align 8
  br label %149

149:                                              ; preds = %140, %131
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %151 = call i32 @XX_Free(%struct.TYPE_33__* %150)
  %152 = load i32, i32* @E_OK, align 4
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %149, %67, %47, %30
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @FmPcdKgGetSchemeHandle(%struct.TYPE_32__*, i64) #1

declare dso_local %struct.TYPE_33__* @XX_Malloc(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @setIpReassmSchemeParams(%struct.TYPE_32__*, %struct.TYPE_33__*, %struct.TYPE_32__*, i32, i64) #1

declare dso_local i8* @FM_PCD_KgSchemeSet(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
