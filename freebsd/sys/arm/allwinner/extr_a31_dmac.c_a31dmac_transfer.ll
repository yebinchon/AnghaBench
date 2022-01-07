; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a31_dmac.c_a31dmac_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a31_dmac.c_a31dmac_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a31dmac_channel = type { i32, i64, %struct.TYPE_2__*, %struct.a31dmac_softc* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.a31dmac_softc = type { i32 }

@DMA_NULL = common dso_local global i64 0, align 8
@DMA_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i64, i64)* @a31dmac_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a31dmac_transfer(i32 %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.a31dmac_channel*, align 8
  %12 = alloca %struct.a31dmac_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.a31dmac_channel*
  store %struct.a31dmac_channel* %14, %struct.a31dmac_channel** %11, align 8
  %15 = load %struct.a31dmac_channel*, %struct.a31dmac_channel** %11, align 8
  %16 = getelementptr inbounds %struct.a31dmac_channel, %struct.a31dmac_channel* %15, i32 0, i32 3
  %17 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %16, align 8
  store %struct.a31dmac_softc* %17, %struct.a31dmac_softc** %12, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i8* @htole32(i64 %18)
  %20 = load %struct.a31dmac_channel*, %struct.a31dmac_channel** %11, align 8
  %21 = getelementptr inbounds %struct.a31dmac_channel, %struct.a31dmac_channel* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i8* %19, i8** %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i8* @htole32(i64 %24)
  %26 = load %struct.a31dmac_channel*, %struct.a31dmac_channel** %11, align 8
  %27 = getelementptr inbounds %struct.a31dmac_channel, %struct.a31dmac_channel* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i8* %25, i8** %29, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i8* @htole32(i64 %30)
  %32 = load %struct.a31dmac_channel*, %struct.a31dmac_channel** %11, align 8
  %33 = getelementptr inbounds %struct.a31dmac_channel, %struct.a31dmac_channel* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i8* %31, i8** %35, align 8
  %36 = load i64, i64* @DMA_NULL, align 8
  %37 = call i8* @htole32(i64 %36)
  %38 = load %struct.a31dmac_channel*, %struct.a31dmac_channel** %11, align 8
  %39 = getelementptr inbounds %struct.a31dmac_channel, %struct.a31dmac_channel* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i8* %37, i8** %41, align 8
  %42 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %12, align 8
  %43 = load %struct.a31dmac_channel*, %struct.a31dmac_channel** %11, align 8
  %44 = getelementptr inbounds %struct.a31dmac_channel, %struct.a31dmac_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @DMA_STAR_ADDR_REG(i32 %45)
  %47 = load %struct.a31dmac_channel*, %struct.a31dmac_channel** %11, align 8
  %48 = getelementptr inbounds %struct.a31dmac_channel, %struct.a31dmac_channel* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @DMA_WRITE(%struct.a31dmac_softc* %42, i32 %46, i64 %49)
  %51 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %12, align 8
  %52 = load %struct.a31dmac_channel*, %struct.a31dmac_channel** %11, align 8
  %53 = getelementptr inbounds %struct.a31dmac_channel, %struct.a31dmac_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @DMA_EN_REG(i32 %54)
  %56 = load i64, i64* @DMA_EN, align 8
  %57 = call i32 @DMA_WRITE(%struct.a31dmac_softc* %51, i32 %55, i64 %56)
  ret i32 0
}

declare dso_local i8* @htole32(i64) #1

declare dso_local i32 @DMA_WRITE(%struct.a31dmac_softc*, i32, i64) #1

declare dso_local i32 @DMA_STAR_ADDR_REG(i32) #1

declare dso_local i32 @DMA_EN_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
