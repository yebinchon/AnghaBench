; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_start_xfer_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_start_xfer_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sdma_softc = type { i32, %struct.ti_sdma_channel* }
%struct.ti_sdma_channel = type { i32, i32, i64 }

@ti_sdma_sc = common dso_local global %struct.ti_sdma_softc* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA4_CCR_PACKET_TRANS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_sdma_start_xfer_packet(i32 %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ti_sdma_softc*, align 8
  %15 = alloca %struct.ti_sdma_channel*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** @ti_sdma_sc, align 8
  store %struct.ti_sdma_softc* %17, %struct.ti_sdma_softc** %14, align 8
  %18 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %19 = icmp eq %struct.ti_sdma_softc* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %7, align 4
  br label %134

22:                                               ; preds = %6
  %23 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %24 = call i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc* %23)
  %25 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %26 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %34 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %33)
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %7, align 4
  br label %134

36:                                               ; preds = %22
  %37 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %38 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %37, i32 0, i32 1
  %39 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %39, i64 %41
  store %struct.ti_sdma_channel* %42, %struct.ti_sdma_channel** %15, align 8
  %43 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %15, align 8
  %44 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @DMA4_CSDP(i32 %49)
  %51 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %15, align 8
  %52 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @DMA4_CSDP_WRITE_MODE(i32 1)
  %55 = or i32 %53, %54
  %56 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %48, i32 %50, i32 %55)
  br label %57

57:                                               ; preds = %47, %36
  %58 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @DMA4_CEN(i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %58, i32 %60, i32 %61)
  %63 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @DMA4_CFN(i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %63, i32 %65, i32 %66)
  %68 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @DMA4_CSSA(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %68, i32 %70, i32 %71)
  %73 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @DMA4_CDSA(i32 %74)
  %76 = load i64, i64* %10, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %73, i32 %75, i32 %77)
  %79 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @DMA4_CCR(i32 %80)
  %82 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %15, align 8
  %83 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DMA4_CCR_PACKET_TRANS, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %79, i32 %81, i32 %86)
  %88 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @DMA4_CSE(i32 %89)
  %91 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %88, i32 %90, i32 1)
  %92 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %15, align 8
  %93 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @DMA4_CCR_SEL_SRC_DST_SYNC(i32 1)
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %57
  %99 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @DMA4_CSF(i32 %100)
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %99, i32 %101, i32 %102)
  br label %110

104:                                              ; preds = %57
  %105 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @DMA4_CDF(i32 %106)
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %105, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %98
  %111 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @DMA4_CDE(i32 %112)
  %114 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %111, i32 %113, i32 1)
  %115 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @DMA4_CSR(i32 %116)
  %118 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %115, i32 %117, i32 8190)
  %119 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @DMA4_CCR(i32 %120)
  %122 = call i32 @ti_sdma_read_4(%struct.ti_sdma_softc* %119, i32 %121)
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = or i32 %123, 128
  store i32 %124, i32* %16, align 4
  %125 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @DMA4_CCR(i32 %126)
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %125, i32 %127, i32 %128)
  %130 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %15, align 8
  %131 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %130, i32 0, i32 2
  store i64 0, i64* %131, align 8
  %132 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %14, align 8
  %133 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %132)
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %110, %32, %20
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc*) #1

declare dso_local i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc*) #1

declare dso_local i32 @ti_sdma_write_4(%struct.ti_sdma_softc*, i32, i32) #1

declare dso_local i32 @DMA4_CSDP(i32) #1

declare dso_local i32 @DMA4_CSDP_WRITE_MODE(i32) #1

declare dso_local i32 @DMA4_CEN(i32) #1

declare dso_local i32 @DMA4_CFN(i32) #1

declare dso_local i32 @DMA4_CSSA(i32) #1

declare dso_local i32 @DMA4_CDSA(i32) #1

declare dso_local i32 @DMA4_CCR(i32) #1

declare dso_local i32 @DMA4_CSE(i32) #1

declare dso_local i32 @DMA4_CCR_SEL_SRC_DST_SYNC(i32) #1

declare dso_local i32 @DMA4_CSF(i32) #1

declare dso_local i32 @DMA4_CDF(i32) #1

declare dso_local i32 @DMA4_CDE(i32) #1

declare dso_local i32 @DMA4_CSR(i32) #1

declare dso_local i32 @ti_sdma_read_4(%struct.ti_sdma_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
