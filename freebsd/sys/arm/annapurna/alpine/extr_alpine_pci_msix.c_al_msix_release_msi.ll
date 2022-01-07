; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_pci_msix.c_al_msix_release_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_pci_msix.c_al_msix_release_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.al_msix_softc = type { i32, i32**, i32 }

@ERR_NOT_IN_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.intr_irqsrc**)* @al_msix_release_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_msix_release_msi(i32 %0, i32 %1, i32 %2, %struct.intr_irqsrc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intr_irqsrc**, align 8
  %9 = alloca %struct.al_msix_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.intr_irqsrc** %3, %struct.intr_irqsrc*** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.al_msix_softc* @device_get_softc(i32 %12)
  store %struct.al_msix_softc* %13, %struct.al_msix_softc** %9, align 8
  %14 = load %struct.al_msix_softc*, %struct.al_msix_softc** %9, align 8
  %15 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %8, align 8
  %19 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %18, align 8
  %20 = call i32 @al_find_intr_pos_in_map(i32 %17, %struct.intr_irqsrc* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.al_msix_softc*, %struct.al_msix_softc** %9, align 8
  %22 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @vmem_free(i32 %23, i32 %24, i32 %25)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %49, %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %8, align 8
  %34 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %33, align 8
  %35 = call i32 @al_find_intr_pos_in_map(i32 %32, %struct.intr_irqsrc* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @ERR_NOT_IN_MAP, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.al_msix_softc*, %struct.al_msix_softc** %9, align 8
  %41 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %31
  %47 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %8, align 8
  %48 = getelementptr inbounds %struct.intr_irqsrc*, %struct.intr_irqsrc** %47, i32 1
  store %struct.intr_irqsrc** %48, %struct.intr_irqsrc*** %8, align 8
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %27

52:                                               ; preds = %27
  %53 = load %struct.al_msix_softc*, %struct.al_msix_softc** %9, align 8
  %54 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %53, i32 0, i32 0
  %55 = call i32 @mtx_unlock(i32* %54)
  ret i32 0
}

declare dso_local %struct.al_msix_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @al_find_intr_pos_in_map(i32, %struct.intr_irqsrc*) #1

declare dso_local i32 @vmem_free(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
