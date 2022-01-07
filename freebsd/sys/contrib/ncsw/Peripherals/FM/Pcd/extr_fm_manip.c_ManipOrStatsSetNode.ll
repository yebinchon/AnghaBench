; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_ManipOrStatsSetNode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_ManipOrStatsSetNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_17__*, i64, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Statistics node!\00", align 1
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid header manipulation type\00", align 1
@HMAN_OC_IP_REASSEMBLY = common dso_local global i64 0, align 8
@HMAN_OC_CAPWAP_REASSEMBLY = common dso_local global i64 0, align 8
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@FM_PCD_CC_AD_TABLE_ALIGN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"MURAM alloc for Manipulation action descriptor\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Allocation of Manipulation action descriptor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_17__*, %struct.TYPE_17__**, i32)* @ManipOrStatsSetNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @ManipOrStatsSetNode(%struct.TYPE_17__* %0, %struct.TYPE_17__** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = bitcast %struct.TYPE_17__* %11 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %10, align 8
  %13 = call i64 @XX_Malloc(i32 40)
  %14 = inttoptr i64 %13 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %8, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %16 = icmp ne %struct.TYPE_17__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @MAJOR, align 4
  %19 = load i32, i32* @E_NO_MEMORY, align 4
  %20 = call i32 @REPORT_ERROR(i32 %18, i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %139

21:                                               ; preds = %3
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = call i32 @memset(%struct.TYPE_17__* %22, i32 0, i32 40)
  %24 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %25 = bitcast %struct.TYPE_17__** %24 to %struct.TYPE_18__*
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %33 = call i32 @memcpy(i32* %31, %struct.TYPE_17__** %32, i32 4)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %21
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %38 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %39 = bitcast %struct.TYPE_17__** %38 to %struct.TYPE_18__*
  %40 = call i64 @CheckManipParamsAndSetType(%struct.TYPE_17__* %37, %struct.TYPE_18__* %39)
  store i64 %40, i64* %9, align 8
  br label %47

41:                                               ; preds = %21
  %42 = load i32, i32* @MAJOR, align 4
  %43 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %44 = call i32 @REPORT_ERROR(i32 %42, i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %46 = call i32 @XX_Free(%struct.TYPE_17__* %45)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %139

47:                                               ; preds = %36
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* @MAJOR, align 4
  %52 = load i32, i32* @E_INVALID_VALUE, align 4
  %53 = call i32 @REPORT_ERROR(i32 %51, i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %55 = call i32 @XX_Free(%struct.TYPE_17__* %54)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %139

56:                                               ; preds = %47
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @HMAN_OC_IP_REASSEMBLY, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %134

62:                                               ; preds = %56
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HMAN_OC_CAPWAP_REASSEMBLY, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %134

68:                                               ; preds = %62
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %68
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %78 = load i32, i32* @FM_PCD_CC_AD_TABLE_ALIGN, align 4
  %79 = call i64 @FM_MURAM_AllocMem(i32 %76, i32 %77, i32 %78)
  %80 = inttoptr i64 %79 to %struct.TYPE_17__*
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %82, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = icmp ne %struct.TYPE_17__* %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %73
  %88 = load i32, i32* @MAJOR, align 4
  %89 = load i32, i32* @E_NO_MEMORY, align 4
  %90 = call i32 @REPORT_ERROR(i32 %88, i32 %89, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %93 = call i32 @ReleaseManipHandler(%struct.TYPE_17__* %91, %struct.TYPE_19__* %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = call i32 @XX_Free(%struct.TYPE_17__* %94)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %139

96:                                               ; preds = %73
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %101 = call i32 @MemSet8(%struct.TYPE_17__* %99, i32 0, i32 %100)
  br label %133

102:                                              ; preds = %68
  %103 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i64 @XX_Malloc(i32 %106)
  %108 = inttoptr i64 %107 to %struct.TYPE_17__*
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  store %struct.TYPE_17__* %108, %struct.TYPE_17__** %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = icmp ne %struct.TYPE_17__* %113, null
  br i1 %114, label %124, label %115

115:                                              ; preds = %102
  %116 = load i32, i32* @MAJOR, align 4
  %117 = load i32, i32* @E_NO_MEMORY, align 4
  %118 = call i32 @REPORT_ERROR(i32 %116, i32 %117, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %121 = call i32 @ReleaseManipHandler(%struct.TYPE_17__* %119, %struct.TYPE_19__* %120)
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %123 = call i32 @XX_Free(%struct.TYPE_17__* %122)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %139

124:                                              ; preds = %102
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memset(%struct.TYPE_17__* %127, i32 0, i32 %131)
  br label %133

133:                                              ; preds = %124, %96
  br label %134

134:                                              ; preds = %133, %62, %56
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  store %struct.TYPE_17__* %135, %struct.TYPE_17__** %137, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %138, %struct.TYPE_17__** %4, align 8
  br label %139

139:                                              ; preds = %134, %115, %87, %50, %41, %17
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %140
}

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_17__**, i32) #1

declare dso_local i64 @CheckManipParamsAndSetType(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_17__*) #1

declare dso_local i64 @FM_MURAM_AllocMem(i32, i32, i32) #1

declare dso_local i32 @ReleaseManipHandler(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32 @MemSet8(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
