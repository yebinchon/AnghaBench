; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_edma.c_dma_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_edma.c_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_channel = type { i32, i32 }
%struct.edma_softc = type { i32 }
%struct.tcd_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@edma_map = common dso_local global %struct.edma_channel* null, align 8
@TCD_ATTR_SMOD_SHIFT = common dso_local global i32 0, align 4
@TCD_ATTR_DMOD_SHIFT = common dso_local global i32 0, align 4
@TCD_ATTR_SSIZE_SHIFT = common dso_local global i32 0, align 4
@TCD_ATTR_DSIZE_SHIFT = common dso_local global i32 0, align 4
@TCD_CSR_INTMAJOR = common dso_local global i32 0, align 4
@TCD_CSR_MAJORELINK = common dso_local global i32 0, align 4
@TCD_CSR_MAJORELINKCH_SHIFT = common dso_local global i32 0, align 4
@DMA_ERQ = common dso_local global i32 0, align 4
@DMA_EEI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edma_softc*, %struct.tcd_conf*)* @dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_setup(%struct.edma_softc* %0, %struct.tcd_conf* %1) #0 {
  %3 = alloca %struct.edma_softc*, align 8
  %4 = alloca %struct.tcd_conf*, align 8
  %5 = alloca %struct.edma_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.edma_softc* %0, %struct.edma_softc** %3, align 8
  store %struct.tcd_conf* %1, %struct.tcd_conf** %4, align 8
  %8 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %9 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.edma_channel*, %struct.edma_channel** @edma_map, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %11, i64 %13
  store %struct.edma_channel* %14, %struct.edma_channel** %5, align 8
  %15 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %16 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %15, i32 0, i32 16
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.edma_channel*, %struct.edma_channel** %5, align 8
  %19 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %21 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %20, i32 0, i32 15
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.edma_channel*, %struct.edma_channel** %5, align 8
  %24 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @DMA_TCDn_SADDR(i32 %26)
  %28 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %29 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @TCD_WRITE4(%struct.edma_softc* %25, i32 %27, i32 %30)
  %32 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @DMA_TCDn_DADDR(i32 %33)
  %35 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %36 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %35, i32 0, i32 13
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @TCD_WRITE4(%struct.edma_softc* %32, i32 %34, i32 %37)
  %39 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %40 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TCD_ATTR_SMOD_SHIFT, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %45 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TCD_ATTR_DMOD_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %52 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TCD_ATTR_SSIZE_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %59 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TCD_ATTR_DSIZE_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @DMA_TCDn_ATTR(i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @TCD_WRITE2(%struct.edma_softc* %65, i32 %67, i32 %68)
  %70 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @DMA_TCDn_SOFF(i32 %71)
  %73 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %74 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @TCD_WRITE2(%struct.edma_softc* %70, i32 %72, i32 %75)
  %77 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @DMA_TCDn_DOFF(i32 %78)
  %80 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %81 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @TCD_WRITE2(%struct.edma_softc* %77, i32 %79, i32 %82)
  %84 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @DMA_TCDn_SLAST(i32 %85)
  %87 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %88 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %87, i32 0, i32 12
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @TCD_WRITE4(%struct.edma_softc* %84, i32 %86, i32 %89)
  %91 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @DMA_TCDn_DLASTSGA(i32 %92)
  %94 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %95 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %94, i32 0, i32 11
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @TCD_WRITE4(%struct.edma_softc* %91, i32 %93, i32 %96)
  %98 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @DMA_TCDn_NBYTES_MLOFFYES(i32 %99)
  %101 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %102 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @TCD_WRITE4(%struct.edma_softc* %98, i32 %100, i32 %103)
  %105 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %106 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %7, align 4
  %108 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @DMA_TCDn_CITER_ELINKNO(i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @TCD_WRITE2(%struct.edma_softc* %108, i32 %110, i32 %111)
  %113 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @DMA_TCDn_BITER_ELINKNO(i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @TCD_WRITE2(%struct.edma_softc* %113, i32 %115, i32 %116)
  %118 = load i32, i32* @TCD_CSR_INTMAJOR, align 4
  store i32 %118, i32* %7, align 4
  %119 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %120 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %134

123:                                              ; preds = %2
  %124 = load i32, i32* @TCD_CSR_MAJORELINK, align 4
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %7, align 4
  %127 = load %struct.tcd_conf*, %struct.tcd_conf** %4, align 8
  %128 = getelementptr inbounds %struct.tcd_conf, %struct.tcd_conf* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @TCD_CSR_MAJORELINKCH_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %123, %2
  %135 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @DMA_TCDn_CSR(i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @TCD_WRITE2(%struct.edma_softc* %135, i32 %137, i32 %138)
  %140 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %141 = load i32, i32* @DMA_ERQ, align 4
  %142 = call i32 @READ4(%struct.edma_softc* %140, i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %6, align 4
  %144 = shl i32 1, %143
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %7, align 4
  %147 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %148 = load i32, i32* @DMA_ERQ, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @WRITE4(%struct.edma_softc* %147, i32 %148, i32 %149)
  %151 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %152 = load i32, i32* @DMA_EEI, align 4
  %153 = call i32 @READ4(%struct.edma_softc* %151, i32 %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %6, align 4
  %155 = shl i32 1, %154
  %156 = load i32, i32* %7, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load %struct.edma_softc*, %struct.edma_softc** %3, align 8
  %159 = load i32, i32* @DMA_EEI, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @WRITE4(%struct.edma_softc* %158, i32 %159, i32 %160)
  ret i32 0
}

declare dso_local i32 @TCD_WRITE4(%struct.edma_softc*, i32, i32) #1

declare dso_local i32 @DMA_TCDn_SADDR(i32) #1

declare dso_local i32 @DMA_TCDn_DADDR(i32) #1

declare dso_local i32 @TCD_WRITE2(%struct.edma_softc*, i32, i32) #1

declare dso_local i32 @DMA_TCDn_ATTR(i32) #1

declare dso_local i32 @DMA_TCDn_SOFF(i32) #1

declare dso_local i32 @DMA_TCDn_DOFF(i32) #1

declare dso_local i32 @DMA_TCDn_SLAST(i32) #1

declare dso_local i32 @DMA_TCDn_DLASTSGA(i32) #1

declare dso_local i32 @DMA_TCDn_NBYTES_MLOFFYES(i32) #1

declare dso_local i32 @DMA_TCDn_CITER_ELINKNO(i32) #1

declare dso_local i32 @DMA_TCDn_BITER_ELINKNO(i32) #1

declare dso_local i32 @DMA_TCDn_CSR(i32) #1

declare dso_local i32 @READ4(%struct.edma_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.edma_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
