; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.gicv3_its_softc = type { i32, i64 }
%struct.gicv3_its_irqsrc = type { i64, i32 }

@LPI_CONF_ENABLE = common dso_local global i32 0, align 4
@ITS_FLAGS_LPI_CONF_FLUSH = common dso_local global i32 0, align 4
@ishst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.intr_irqsrc*)* @gicv3_its_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gicv3_its_enable_intr(i32 %0, %struct.intr_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca %struct.gicv3_its_softc*, align 8
  %6 = alloca %struct.gicv3_its_irqsrc*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.gicv3_its_softc* @device_get_softc(i32 %8)
  store %struct.gicv3_its_softc* %9, %struct.gicv3_its_softc** %5, align 8
  %10 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %11 = bitcast %struct.intr_irqsrc* %10 to %struct.gicv3_its_irqsrc*
  store %struct.gicv3_its_irqsrc* %11, %struct.gicv3_its_irqsrc** %6, align 8
  %12 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %13 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load i32, i32* @LPI_CONF_ENABLE, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %6, align 8
  %19 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %16
  store i32 %23, i32* %21, align 4
  %24 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %25 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ITS_FLAGS_LPI_CONF_FLUSH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %6, align 8
  %33 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = ptrtoint i32* %35 to i32
  %37 = call i32 @cpu_dcache_wb_range(i32 %36, i32 1)
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @ishst, align 4
  %40 = call i32 @dsb(i32 %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %6, align 8
  %44 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %6, align 8
  %47 = call i32 @its_cmd_inv(i32 %42, i32 %45, %struct.gicv3_its_irqsrc* %46)
  ret void
}

declare dso_local %struct.gicv3_its_softc* @device_get_softc(i32) #1

declare dso_local i32 @cpu_dcache_wb_range(i32, i32) #1

declare dso_local i32 @dsb(i32) #1

declare dso_local i32 @its_cmd_inv(i32, i32, %struct.gicv3_its_irqsrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
