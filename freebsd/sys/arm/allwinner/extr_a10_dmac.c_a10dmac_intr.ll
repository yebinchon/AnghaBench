; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_dmac.c_a10dmac_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_dmac.c_a10dmac_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10dmac_softc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 (i32)* }
%struct.TYPE_3__ = type { i32, i32 (i32)* }

@AWIN_DMA_IRQ_PEND_STA_REG = common dso_local global i32 0, align 4
@AWIN_DMA_IRQ_END_MASK = common dso_local global i32 0, align 4
@AWIN_DMA_IRQ_NDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @a10dmac_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10dmac_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.a10dmac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.a10dmac_softc*
  store %struct.a10dmac_softc* %9, %struct.a10dmac_softc** %3, align 8
  %10 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %3, align 8
  %11 = load i32, i32* @AWIN_DMA_IRQ_PEND_STA_REG, align 4
  %12 = call i32 @DMA_READ(%struct.a10dmac_softc* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %3, align 8
  %14 = load i32, i32* @AWIN_DMA_IRQ_PEND_STA_REG, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @DMA_WRITE(%struct.a10dmac_softc* %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %92, %75, %49, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @AWIN_DMA_IRQ_END_MASK, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @ffs(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %93

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 1
  %26 = shl i32 1, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sdiv i32 %32, 2
  %34 = and i32 %33, 7
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @AWIN_DMA_IRQ_NDMA, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %23
  %41 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %3, align 8
  %42 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = icmp eq i32 (i32)* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %17

50:                                               ; preds = %40
  %51 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %3, align 8
  %52 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32 (i32)*, i32 (i32)** %56, align 8
  %58 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %3, align 8
  %59 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %57(i32 %64)
  br label %92

66:                                               ; preds = %23
  %67 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %3, align 8
  %68 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32 (i32)*, i32 (i32)** %72, align 8
  %74 = icmp eq i32 (i32)* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %17

76:                                               ; preds = %66
  %77 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %3, align 8
  %78 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32 (i32)*, i32 (i32)** %82, align 8
  %84 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %3, align 8
  %85 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 %83(i32 %90)
  br label %92

92:                                               ; preds = %76, %50
  br label %17

93:                                               ; preds = %17
  ret void
}

declare dso_local i32 @DMA_READ(%struct.a10dmac_softc*, i32) #1

declare dso_local i32 @DMA_WRITE(%struct.a10dmac_softc*, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
