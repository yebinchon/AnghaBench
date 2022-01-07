; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgFree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@E_OK = common dso_local global i64 0, align 8
@e_FM_MOD_KG = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_ERR = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@FM_PCD_KG_NUM_OF_SCHEMES = common dso_local global i32 0, align 4
@FM_PCD_FREE_KG_SCHEMES = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @KgFree(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %9 = load i64, i64* @E_OK, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @e_FM_MOD_KG, align 4
  %14 = load i32, i32* @e_FM_INTR_TYPE_ERR, align 4
  %15 = call i32 @FmUnregisterIntr(i32 %12, i32 %13, i32 0, i32 %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NCSW_MASTER_ID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = call i64 @FmPcdKgFreeSchemes(%struct.TYPE_14__* %22, i32 %27, i64 %30, %struct.TYPE_13__* %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %21
  %40 = load i32, i32* @MAJOR, align 4
  %41 = load i64, i64* %5, align 8
  %42 = load i8*, i8** @NO_MSG, align 8
  %43 = call i32 @RETURN_ERROR(i32 %40, i64 %41, i8* %42)
  br label %44

44:                                               ; preds = %39, %21
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @XX_FreeSpinlock(i64 %56)
  br label %58

58:                                               ; preds = %51, %44
  %59 = load i64, i64* @E_OK, align 8
  store i64 %59, i64* %2, align 8
  br label %136

60:                                               ; preds = %1
  %61 = call i32 @memset(%struct.TYPE_12__* %8, i32 0, i32 12)
  %62 = call i32 @memset(%struct.TYPE_12__* %6, i32 0, i32 12)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  store i64 %71, i64* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FM_PCD_KG_NUM_OF_SCHEMES, align 4
  %76 = icmp slt i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT_COND(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = mul i64 4, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memcpy(i32 %80, %struct.TYPE_13__* %85, i32 %90)
  %92 = load i32, i32* @FM_PCD_FREE_KG_SCHEMES, align 4
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @memcpy(i32 %95, %struct.TYPE_13__* %4, i32 24)
  store i32 4, i32* %7, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = bitcast %struct.TYPE_12__* %6 to i32*
  %101 = bitcast %struct.TYPE_12__* %8 to i32*
  %102 = call i64 @XX_IpcSendMessage(i32 %99, i32* %100, i32 28, i32* %101, i32* %7, i32* null, i32* null)
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* @E_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %60
  %106 = load i32, i32* @MAJOR, align 4
  %107 = load i64, i64* %5, align 8
  %108 = load i8*, i8** @NO_MSG, align 8
  %109 = call i32 @RETURN_ERROR(i32 %106, i64 %107, i8* %108)
  br label %110

110:                                              ; preds = %105, %60
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp ne i64 %112, 4
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* @MAJOR, align 4
  %116 = load i64, i64* @E_INVALID_VALUE, align 8
  %117 = call i32 @RETURN_ERROR(i32 %115, i64 %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %110
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @XX_FreeSpinlock(i64 %130)
  br label %132

132:                                              ; preds = %125, %118
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %2, align 8
  br label %136

136:                                              ; preds = %132, %58
  %137 = load i64, i64* %2, align 8
  ret i64 %137
}

declare dso_local i32 @FmUnregisterIntr(i32, i32, i32, i32) #1

declare dso_local i64 @FmPcdKgFreeSchemes(%struct.TYPE_14__*, i32, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @XX_FreeSpinlock(i64) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @XX_IpcSendMessage(i32, i32*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
