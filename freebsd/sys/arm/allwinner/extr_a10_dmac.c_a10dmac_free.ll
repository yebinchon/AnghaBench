; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_dmac.c_a10dmac_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_dmac.c_a10dmac_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10dmac_channel = type { i64, i32*, i32*, i32, %struct.a10dmac_softc* }
%struct.a10dmac_softc = type { i32 }

@AWIN_DMA_IRQ_EN_REG = common dso_local global i32 0, align 4
@CH_NDMA = common dso_local global i64 0, align 8
@AWIN_NDMA_CTL_DMA_LOADING = common dso_local global i32 0, align 4
@AWIN_DDMA_CTL_DMA_LOADING = common dso_local global i32 0, align 4
@AWIN_DMA_IRQ_PEND_STA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @a10dmac_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10dmac_free(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.a10dmac_channel*, align 8
  %6 = alloca %struct.a10dmac_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.a10dmac_channel*
  store %struct.a10dmac_channel* %11, %struct.a10dmac_channel** %5, align 8
  %12 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %5, align 8
  %13 = getelementptr inbounds %struct.a10dmac_channel, %struct.a10dmac_channel* %12, i32 0, i32 4
  %14 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %13, align 8
  store %struct.a10dmac_softc* %14, %struct.a10dmac_softc** %6, align 8
  %15 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %6, align 8
  %16 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %15, i32 0, i32 0
  %17 = call i32 @mtx_lock_spin(i32* %16)
  %18 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %6, align 8
  %19 = load i32, i32* @AWIN_DMA_IRQ_EN_REG, align 4
  %20 = call i32 @DMA_READ(%struct.a10dmac_softc* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %5, align 8
  %22 = call i32 @a10dmac_read_ctl(%struct.a10dmac_channel* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %5, align 8
  %24 = getelementptr inbounds %struct.a10dmac_channel, %struct.a10dmac_channel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CH_NDMA, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %5, align 8
  %30 = getelementptr inbounds %struct.a10dmac_channel, %struct.a10dmac_channel* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @AWIN_DMA_IRQ_NDMA_END(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @AWIN_NDMA_CTL_DMA_LOADING, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %46

37:                                               ; preds = %2
  %38 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %5, align 8
  %39 = getelementptr inbounds %struct.a10dmac_channel, %struct.a10dmac_channel* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @AWIN_DMA_IRQ_DDMA_END(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @AWIN_DDMA_CTL_DMA_LOADING, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %37, %28
  %47 = load i32, i32* %8, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @a10dmac_write_ctl(%struct.a10dmac_channel* %51, i32 %52)
  %54 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %6, align 8
  %55 = load i32, i32* @AWIN_DMA_IRQ_EN_REG, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @DMA_WRITE(%struct.a10dmac_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %6, align 8
  %59 = load i32, i32* @AWIN_DMA_IRQ_PEND_STA_REG, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @DMA_WRITE(%struct.a10dmac_softc* %58, i32 %59, i32 %60)
  %62 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %5, align 8
  %63 = getelementptr inbounds %struct.a10dmac_channel, %struct.a10dmac_channel* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  %64 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %5, align 8
  %65 = getelementptr inbounds %struct.a10dmac_channel, %struct.a10dmac_channel* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %6, align 8
  %67 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %66, i32 0, i32 0
  %68 = call i32 @mtx_unlock_spin(i32* %67)
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @DMA_READ(%struct.a10dmac_softc*, i32) #1

declare dso_local i32 @a10dmac_read_ctl(%struct.a10dmac_channel*) #1

declare dso_local i32 @AWIN_DMA_IRQ_NDMA_END(i32) #1

declare dso_local i32 @AWIN_DMA_IRQ_DDMA_END(i32) #1

declare dso_local i32 @a10dmac_write_ctl(%struct.a10dmac_channel*, i32) #1

declare dso_local i32 @DMA_WRITE(%struct.a10dmac_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
