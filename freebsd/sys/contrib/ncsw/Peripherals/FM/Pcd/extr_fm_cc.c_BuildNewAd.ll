; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_BuildNewAd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_BuildNewAd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_15__, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"p_FmPcdCcNodeTmp\00", align 1
@e_FM_PCD_CC = common dso_local global i64 0, align 8
@E_OK = common dso_local global i64 0, align 8
@E_INVALID_STATE = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@e_FM_PCD_FR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_18__*)* @BuildNewAd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BuildNewAd(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  store i32* null, i32** %11, align 8
  %12 = call i64 @XX_Malloc(i32 64)
  %13 = inttoptr i64 %12 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %10, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %15 = icmp ne %struct.TYPE_17__* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @MAJOR, align 4
  %18 = load i32, i32* @E_NO_MEMORY, align 4
  %19 = call i32 @REPORT_ERROR(i32 %17, i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %132

20:                                               ; preds = %4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %22 = call i32 @memset(%struct.TYPE_17__* %21, i32 0, i32 64)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 13
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @e_FM_PCD_CC, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %129

88:                                               ; preds = %20
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %11, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @AllocAndFillAdForContLookupManip(i32 %101)
  %103 = load i64, i64* @E_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %93
  %106 = load i32, i32* @MAJOR, align 4
  %107 = load i32, i32* @E_INVALID_STATE, align 4
  %108 = load i8*, i8** @NO_MSG, align 8
  %109 = call i32 @REPORT_ERROR(i32 %106, i32 %107, i8* %108)
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %111 = call i32 @XX_Free(%struct.TYPE_17__* %110)
  store i32* null, i32** %5, align 8
  br label %132

112:                                              ; preds = %93
  br label %113

113:                                              ; preds = %112, %88
  %114 = load i32*, i32** %6, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %126

122:                                              ; preds = %113
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  br label %126

126:                                              ; preds = %122, %121
  %127 = phi i32* [ null, %121 ], [ %125, %122 ]
  %128 = call i32 @FillAdOfTypeContLookup(i32* %114, i32* null, i32 %117, %struct.TYPE_17__* %118, i32* %127, i32* null)
  br label %129

129:                                              ; preds = %126, %20
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %131 = call i32 @XX_Free(%struct.TYPE_17__* %130)
  store i32* null, i32** %5, align 8
  br label %132

132:                                              ; preds = %129, %105, %16
  %133 = load i32*, i32** %5, align 8
  ret i32* %133
}

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @AllocAndFillAdForContLookupManip(i32) #1

declare dso_local i32 @XX_Free(%struct.TYPE_17__*) #1

declare dso_local i32 @FillAdOfTypeContLookup(i32*, i32*, i32, %struct.TYPE_17__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
