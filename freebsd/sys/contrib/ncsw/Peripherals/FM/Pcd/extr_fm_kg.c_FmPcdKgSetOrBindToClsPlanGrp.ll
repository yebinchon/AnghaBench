; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FmPcdKgSetOrBindToClsPlanGrp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_FmPcdKgSetOrBindToClsPlanGrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i64, i64 }

@ILLEGAL_CLS_PLAN = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Classification plan set\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FM_PCD_MAX_NUM_OF_CLS_PLANS = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmPcdKgSetOrBindToClsPlanGrp(i64 %0, i64 %1, i64 %2, i32* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i64, i64* %7, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %13, align 8
  %21 = call i32 @memset(%struct.TYPE_16__* %14, i32 0, i32 24)
  %22 = load i64, i64* @ILLEGAL_CLS_PLAN, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %15, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %29 = call i64 @PcdGetClsPlanGrpParams(i64 %27, %struct.TYPE_16__* %28)
  store i64 %29, i64* %18, align 8
  %30 = load i64, i64* %18, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %6
  %33 = load i32, i32* @MINOR, align 4
  %34 = load i64, i64* %18, align 8
  %35 = load i8*, i8** @NO_MSG, align 8
  %36 = call i32 @RETURN_ERROR(i32 %33, i64 %34, i8* %35)
  br label %37

37:                                               ; preds = %32, %6
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %11, align 8
  store i64 %45, i64* %46, align 8
  br label %104

47:                                               ; preds = %37
  %48 = call i64 @XX_Malloc(i32 24)
  %49 = inttoptr i64 %48 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %17, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %51 = icmp ne %struct.TYPE_16__* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @MAJOR, align 4
  %54 = load i64, i64* @E_NO_MEMORY, align 8
  %55 = call i32 @RETURN_ERROR(i32 %53, i64 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %58 = call i32 @memset(%struct.TYPE_16__* %57, i32 0, i32 24)
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %62 = call i64 @FmPcdKgBuildClsPlanGrp(i64 %59, %struct.TYPE_16__* %60, %struct.TYPE_16__* %61)
  store i64 %62, i64* %18, align 8
  %63 = load i64, i64* %18, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %67 = call i32 @XX_Free(%struct.TYPE_16__* %66)
  %68 = load i32, i32* @MINOR, align 4
  %69 = load i64, i64* %18, align 8
  %70 = load i8*, i8** @NO_MSG, align 8
  %71 = call i32 @RETURN_ERROR(i32 %68, i64 %69, i8* %70)
  br label %72

72:                                               ; preds = %65, %56
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %11, align 8
  store i64 %75, i64* %76, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %72
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %86 = call i64 @FmHcPcdKgSetClsPlan(i64 %84, %struct.TYPE_16__* %85)
  store i64 %86, i64* %18, align 8
  %87 = load i64, i64* %18, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %81
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %91 = call i32 @XX_Free(%struct.TYPE_16__* %90)
  %92 = load i32, i32* @MAJOR, align 4
  %93 = load i64, i64* %18, align 8
  %94 = load i8*, i8** @NO_MSG, align 8
  %95 = call i32 @RETURN_ERROR(i32 %92, i64 %93, i8* %94)
  br label %96

96:                                               ; preds = %89, %81
  br label %101

97:                                               ; preds = %72
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %100 = call i32 @KgSetClsPlan(%struct.TYPE_18__* %98, %struct.TYPE_16__* %99)
  br label %101

101:                                              ; preds = %97, %96
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %103 = call i32 @XX_Free(%struct.TYPE_16__* %102)
  br label %104

104:                                              ; preds = %101, %42
  %105 = load i64*, i64** %11, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %106, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = load i32, i32* @TRUE, align 4
  %115 = load i32*, i32** %12, align 8
  store i32 %114, i32* %115, align 4
  br label %119

116:                                              ; preds = %104
  %117 = load i32, i32* @FALSE, align 4
  %118 = load i32*, i32** %12, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %113
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = load i64*, i64** %11, align 8
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i64 %126
  store %struct.TYPE_17__* %127, %struct.TYPE_17__** %16, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load i32*, i32** %10, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  %138 = load i64*, i64** %11, align 8
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load i32, i32* @FM_PCD_MAX_NUM_OF_CLS_PLANS, align 4
  %143 = call i32 @FM_PCD_MAX_NUM_OF_OPTIONS(i32 %142)
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 4
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memcpy(i32* %132, i32* %141, i32 %146)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @BindPortToClsPlanGrp(%struct.TYPE_18__* %148, i64 %149, i64 %152)
  store i64 %153, i64* %18, align 8
  %154 = load i64, i64* %18, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %119
  %157 = load i32, i32* @MINOR, align 4
  %158 = load i64, i64* %18, align 8
  %159 = load i8*, i8** @NO_MSG, align 8
  %160 = call i32 @RETURN_ERROR(i32 %157, i64 %158, i8* %159)
  br label %161

161:                                              ; preds = %156, %119
  %162 = load i64, i64* @E_OK, align 8
  ret i64 %162
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @PcdGetClsPlanGrpParams(i64, %struct.TYPE_16__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i64 @FmPcdKgBuildClsPlanGrp(i64, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_16__*) #1

declare dso_local i64 @FmHcPcdKgSetClsPlan(i64, %struct.TYPE_16__*) #1

declare dso_local i32 @KgSetClsPlan(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @FM_PCD_MAX_NUM_OF_OPTIONS(i32) #1

declare dso_local i64 @BindPortToClsPlanGrp(%struct.TYPE_18__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
