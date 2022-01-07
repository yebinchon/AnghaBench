; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_bind_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_bind_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.gicv3_its_irqsrc = type { i32 }
%struct.gicv3_its_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*)* @gicv3_its_bind_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gicv3_its_bind_intr(i32 %0, %struct.intr_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca %struct.gicv3_its_irqsrc*, align 8
  %6 = alloca %struct.gicv3_its_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.gicv3_its_softc* @device_get_softc(i32 %7)
  store %struct.gicv3_its_softc* %8, %struct.gicv3_its_softc** %6, align 8
  %9 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %10 = bitcast %struct.intr_irqsrc* %9 to %struct.gicv3_its_irqsrc*
  store %struct.gicv3_its_irqsrc* %10, %struct.gicv3_its_irqsrc** %5, align 8
  %11 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %12 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %11, i32 0, i32 0
  %13 = call i64 @CPU_EMPTY(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %6, align 8
  %17 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %6, align 8
  %20 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %19, i32 0, i32 1
  %21 = call i32 @intr_irq_next_cpu(i32 %18, i32* %20)
  %22 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %6, align 8
  %23 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %6, align 8
  %25 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %28 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %27, i32 0, i32 0
  %29 = call i32 @CPU_SETOF(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %15, %2
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %5, align 8
  %33 = call i32 @its_cmd_movi(i32 %31, %struct.gicv3_its_irqsrc* %32)
  ret i32 0
}

declare dso_local %struct.gicv3_its_softc* @device_get_softc(i32) #1

declare dso_local i64 @CPU_EMPTY(i32*) #1

declare dso_local i32 @intr_irq_next_cpu(i32, i32*) #1

declare dso_local i32 @CPU_SETOF(i32, i32*) #1

declare dso_local i32 @its_cmd_movi(i32, %struct.gicv3_its_irqsrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
