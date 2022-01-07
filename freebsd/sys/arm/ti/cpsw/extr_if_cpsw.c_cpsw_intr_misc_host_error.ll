; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_intr_misc_host_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_intr_misc_host_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"HOST ERROR:  PROGRAMMING ERROR DETECTED BY HARDWARE\0A\00", align 1
@CPSW_CPDMA_DMA_INTSTAT_MASKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"CPSW_CPDMA_DMA_INTSTAT_MASKED=0x%x\0A\00", align 1
@CPSW_CPDMA_DMASTATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"CPSW_CPDMA_DMASTATUS=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"SOP error on TX channel %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Ownership bit not set on SOP buffer on TX channel %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Zero Next Buffer but not EOP on TX channel %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Zero Buffer Pointer on TX channel %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Zero Buffer Length on TX channel %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Packet length error on TX channel %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Unknown error on TX channel %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"CPSW_CPDMA_TX%d_HDP=0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"CPSW_CPDMA_TX%d_CP=0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Ownership bit not set on RX channel %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Zero Buffer Pointer on RX channel %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Zero Buffer Length on RX channel %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Buffer offset too big on RX channel %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Unknown RX error on RX channel %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"CPSW_CPDMA_RX%d_HDP=0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"CPSW_CPDMA_RX%d_CP=0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"\0AALE Table\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"CPSW HOST ERROR INTERRUPT\00", align 1
@CPSW_CPDMA_DMA_INTMASK_CLEAR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [37 x i8] c"XXX HOST ERROR INTERRUPT SUPPRESSED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_softc*)* @cpsw_intr_misc_host_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_intr_misc_host_error(%struct.cpsw_softc* %0) #0 {
  %2 = alloca %struct.cpsw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %2, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %11 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, i8*, ...) @device_printf(i32 %12, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %16 = load i32, i32* @CPSW_CPDMA_DMA_INTSTAT_MASKED, align 4
  %17 = call i32 @cpsw_read_4(%struct.cpsw_softc* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %19 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i32, i8*, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %24 = load i32, i32* @CPSW_CPDMA_DMASTATUS, align 4
  %25 = call i32 @cpsw_read_4(%struct.cpsw_softc* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %27 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 20
  %33 = and i32 %32, 15
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 7
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 12
  %39 = and i32 %38, 15
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 7
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %63 [
    i32 0, label %44
    i32 1, label %45
    i32 2, label %48
    i32 3, label %51
    i32 4, label %54
    i32 5, label %57
    i32 6, label %60
  ]

44:                                               ; preds = %1
  br label %66

45:                                               ; preds = %1
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  br label %66

48:                                               ; preds = %1
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  br label %66

51:                                               ; preds = %1
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  br label %66

54:                                               ; preds = %1
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  br label %66

57:                                               ; preds = %1
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %58)
  br label %66

60:                                               ; preds = %1
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %61)
  br label %66

63:                                               ; preds = %1
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %60, %57, %54, %51, %48, %45, %44
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @CPSW_CPDMA_TX_HDP(i32 %72)
  %74 = call i32 @cpsw_read_4(%struct.cpsw_softc* %71, i32 %73)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %70, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @CPSW_CPDMA_TX_CP(i32 %78)
  %80 = call i32 @cpsw_read_4(%struct.cpsw_softc* %77, i32 %79)
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %76, i32 %80)
  %82 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %83 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %84 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call i32 @cpsw_dump_queue(%struct.cpsw_softc* %82, i32* %85)
  br label %87

87:                                               ; preds = %69, %66
  %88 = load i32, i32* %6, align 4
  switch i32 %88, label %102 [
    i32 0, label %89
    i32 2, label %90
    i32 4, label %93
    i32 5, label %96
    i32 6, label %99
  ]

89:                                               ; preds = %87
  br label %105

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %91)
  br label %105

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %94)
  br label %105

96:                                               ; preds = %87
  %97 = load i32, i32* %8, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %97)
  br label %105

99:                                               ; preds = %87
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %100)
  br label %105

102:                                              ; preds = %87
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102, %99, %96, %93, %90, %89
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @CPSW_CPDMA_RX_HDP(i32 %111)
  %113 = call i32 @cpsw_read_4(%struct.cpsw_softc* %110, i32 %112)
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %109, i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @CPSW_CPDMA_RX_CP(i32 %117)
  %119 = call i32 @cpsw_read_4(%struct.cpsw_softc* %116, i32 %118)
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 %115, i32 %119)
  %121 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %122 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %123 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = call i32 @cpsw_dump_queue(%struct.cpsw_softc* %121, i32* %124)
  br label %126

126:                                              ; preds = %108, %105
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %128 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %129 = call i32 @cpsw_ale_dump_table(%struct.cpsw_softc* %128)
  %130 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0))
  %131 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %132 = load i32, i32* @CPSW_CPDMA_DMA_INTMASK_CLEAR, align 4
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @cpsw_write_4(%struct.cpsw_softc* %131, i32 %132, i32 %133)
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @cpsw_read_4(%struct.cpsw_softc*, i32) #1

declare dso_local i32 @CPSW_CPDMA_TX_HDP(i32) #1

declare dso_local i32 @CPSW_CPDMA_TX_CP(i32) #1

declare dso_local i32 @cpsw_dump_queue(%struct.cpsw_softc*, i32*) #1

declare dso_local i32 @CPSW_CPDMA_RX_HDP(i32) #1

declare dso_local i32 @CPSW_CPDMA_RX_CP(i32) #1

declare dso_local i32 @cpsw_ale_dump_table(%struct.cpsw_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @cpsw_write_4(%struct.cpsw_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
