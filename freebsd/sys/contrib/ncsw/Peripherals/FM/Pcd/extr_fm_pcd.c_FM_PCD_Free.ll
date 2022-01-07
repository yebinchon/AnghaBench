; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FM_PCD_Free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FM_PCD_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i32, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i64, i64, i32, i64 }

@E_OK = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_PCD_Free(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %3, align 8
  %7 = load i32, i32* @E_OK, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 13
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 12
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 13
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @UINT_TO_PTR(i64 %18)
  %20 = call i32 @FM_MURAM_FreeMem(i32 %15, i32 %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 11
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 11
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @UINT_TO_PTR(i64 %32)
  %34 = call i32 @FM_MURAM_FreeMem(i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %26, %21
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 10
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = call i32 @FM_PCD_Disable(%struct.TYPE_8__* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 9
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 9
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i32 @XX_Free(%struct.TYPE_8__* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 9
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = call i32 @KgFree(%struct.TYPE_8__* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @E_OK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @MINOR, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @NO_MSG, align 4
  %69 = call i32 @RETURN_ERROR(i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = call i32 @XX_Free(%struct.TYPE_8__* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %76, align 8
  br label %77

77:                                               ; preds = %70, %55
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 7
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = icmp ne %struct.TYPE_8__* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = call i32 @PlcrFree(%struct.TYPE_8__* %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 7
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = call i32 @XX_Free(%struct.TYPE_8__* %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 7
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %90, align 8
  br label %91

91:                                               ; preds = %82, %77
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 6
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = icmp ne %struct.TYPE_8__* %94, null
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NCSW_MASTER_ID, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = call i32 @PrsFree(%struct.TYPE_8__* %103)
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = call i32 @XX_Free(%struct.TYPE_8__* %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 6
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %111, align 8
  br label %112

112:                                              ; preds = %105, %91
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @FmHcFree(i32* %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %117, %112
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @XX_IpcUnregisterMsgHandler(i32 %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @FmUnregisterPcd(i32 %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = call i32 @ReleaseFreeLocksLst(%struct.TYPE_8__* %133)
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %124
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @XX_FreeSpinlock(i64 %142)
  br label %144

144:                                              ; preds = %139, %124
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @XX_FreeSpinlock(i64 %152)
  br label %154

154:                                              ; preds = %149, %144
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %156 = call i32 @XX_Free(%struct.TYPE_8__* %155)
  %157 = load i32, i32* @E_OK, align 4
  ret i32 %157
}

declare dso_local i32 @FM_MURAM_FreeMem(i32, i32) #1

declare dso_local i32 @UINT_TO_PTR(i64) #1

declare dso_local i32 @FM_PCD_Disable(%struct.TYPE_8__*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_8__*) #1

declare dso_local i32 @KgFree(%struct.TYPE_8__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i32) #1

declare dso_local i32 @PlcrFree(%struct.TYPE_8__*) #1

declare dso_local i32 @PrsFree(%struct.TYPE_8__*) #1

declare dso_local i32 @FmHcFree(i32*) #1

declare dso_local i32 @XX_IpcUnregisterMsgHandler(i32) #1

declare dso_local i32 @FmUnregisterPcd(i32) #1

declare dso_local i32 @ReleaseFreeLocksLst(%struct.TYPE_8__*) #1

declare dso_local i32 @XX_FreeSpinlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
