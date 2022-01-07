; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_pci_msix.c_al_find_intr_pos_in_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_pci_msix.c_al_find_intr_pos_in_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.al_msix_softc = type { %struct.intr_irqsrc** }

@MAX_MSIX_COUNT = common dso_local global i32 0, align 4
@ERR_NOT_IN_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*)* @al_find_intr_pos_in_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_find_intr_pos_in_map(i32 %0, %struct.intr_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.intr_irqsrc*, align 8
  %6 = alloca %struct.al_msix_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.al_msix_softc* @device_get_softc(i32 %8)
  store %struct.al_msix_softc* %9, %struct.al_msix_softc** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MAX_MSIX_COUNT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load %struct.al_msix_softc*, %struct.al_msix_softc** %6, align 8
  %16 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %15, i32 0, i32 0
  %17 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.intr_irqsrc*, %struct.intr_irqsrc** %17, i64 %19
  %21 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %20, align 8
  %22 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %5, align 8
  %23 = icmp eq %struct.intr_irqsrc* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load i32, i32* @ERR_NOT_IN_MAP, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.al_msix_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
