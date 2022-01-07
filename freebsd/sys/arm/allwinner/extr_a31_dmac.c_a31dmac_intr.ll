; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a31_dmac.c_a31dmac_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a31_dmac.c_a31dmac_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a31dmac_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32)* }

@DMA_IRQ_PEND_REG0 = common dso_local global i32 0, align 4
@DMA_IRQ_PEND_REG1 = common dso_local global i32 0, align 4
@DMA_PKG_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @a31dmac_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a31dmac_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.a31dmac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.a31dmac_softc*
  store %struct.a31dmac_softc* %11, %struct.a31dmac_softc** %3, align 8
  %12 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %3, align 8
  %13 = load i32, i32* @DMA_IRQ_PEND_REG0, align 4
  %14 = call i32 @DMA_READ(%struct.a31dmac_softc* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %3, align 8
  %16 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 8
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %3, align 8
  %21 = load i32, i32* @DMA_IRQ_PEND_REG1, align 4
  %22 = call i32 @DMA_READ(%struct.a31dmac_softc* %20, i32 %21)
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 0, %23 ]
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %104

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %3, align 8
  %37 = load i32, i32* @DMA_IRQ_PEND_REG0, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @DMA_WRITE(%struct.a31dmac_softc* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %3, align 8
  %45 = load i32, i32* @DMA_IRQ_PEND_REG1, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @DMA_WRITE(%struct.a31dmac_softc* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 %50, 32
  %52 = or i32 %49, %51
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %88, %87, %77, %48
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @DMA_PKG_IRQ_MASK, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @ffsll(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %104

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %60, 1
  %62 = shl i32 1, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sdiv i32 %68, 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %3, align 8
  %73 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = icmp uge i64 %71, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %59
  br label %53

78:                                               ; preds = %59
  %79 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %3, align 8
  %80 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32 (i32)*, i32 (i32)** %84, align 8
  %86 = icmp eq i32 (i32)* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %53

88:                                               ; preds = %78
  %89 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %3, align 8
  %90 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32 (i32)*, i32 (i32)** %94, align 8
  %96 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %3, align 8
  %97 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %95(i32 %102)
  br label %53

104:                                              ; preds = %31, %53
  ret void
}

declare dso_local i32 @DMA_READ(%struct.a31dmac_softc*, i32) #1

declare dso_local i32 @DMA_WRITE(%struct.a31dmac_softc*, i32, i32) #1

declare dso_local i32 @ffsll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
