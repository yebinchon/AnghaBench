; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_start_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_start_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sdma_softc = type { i32, %struct.ti_sdma_channel* }
%struct.ti_sdma_channel = type { i32, i32, i64 }

@ti_sdma_sc = common dso_local global %struct.ti_sdma_softc* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_sdma_start_xfer(i32 %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ti_sdma_softc*, align 8
  %13 = alloca %struct.ti_sdma_channel*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** @ti_sdma_sc, align 8
  store %struct.ti_sdma_softc* %15, %struct.ti_sdma_softc** %12, align 8
  %16 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %17 = icmp eq %struct.ti_sdma_softc* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %6, align 4
  br label %113

20:                                               ; preds = %5
  %21 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %22 = call i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc* %21)
  %23 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %24 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %32 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %31)
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %6, align 4
  br label %113

34:                                               ; preds = %20
  %35 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %36 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %35, i32 0, i32 1
  %37 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %37, i64 %39
  store %struct.ti_sdma_channel* %40, %struct.ti_sdma_channel** %13, align 8
  %41 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @DMA4_CSDP(i32 %42)
  %44 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %13, align 8
  %45 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @DMA4_CSDP_WRITE_MODE(i32 1)
  %48 = or i32 %46, %47
  %49 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %41, i32 %43, i32 %48)
  %50 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @DMA4_CEN(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %50, i32 %52, i32 %53)
  %55 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @DMA4_CFN(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %55, i32 %57, i32 %58)
  %60 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @DMA4_CSSA(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %60, i32 %62, i32 %63)
  %65 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @DMA4_CDSA(i32 %66)
  %68 = load i64, i64* %9, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %65, i32 %67, i32 %69)
  %71 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @DMA4_CCR(i32 %72)
  %74 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %13, align 8
  %75 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %71, i32 %73, i32 %76)
  %78 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @DMA4_CSE(i32 %79)
  %81 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %78, i32 %80, i32 1)
  %82 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @DMA4_CSF(i32 %83)
  %85 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %82, i32 %84, i32 1)
  %86 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @DMA4_CDE(i32 %87)
  %89 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %86, i32 %88, i32 1)
  %90 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @DMA4_CDF(i32 %91)
  %93 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %90, i32 %92, i32 1)
  %94 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @DMA4_CSR(i32 %95)
  %97 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %94, i32 %96, i32 8190)
  %98 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @DMA4_CCR(i32 %99)
  %101 = call i32 @ti_sdma_read_4(%struct.ti_sdma_softc* %98, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = or i32 %102, 128
  store i32 %103, i32* %14, align 4
  %104 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @DMA4_CCR(i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %104, i32 %106, i32 %107)
  %109 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %13, align 8
  %110 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %12, align 8
  %112 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %111)
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %34, %30, %18
  %114 = load i32, i32* %6, align 4
  ret i32 %114
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

declare dso_local i32 @DMA4_CSF(i32) #1

declare dso_local i32 @DMA4_CDE(i32) #1

declare dso_local i32 @DMA4_CDF(i32) #1

declare dso_local i32 @DMA4_CSR(i32) #1

declare dso_local i32 @ti_sdma_read_4(%struct.ti_sdma_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
