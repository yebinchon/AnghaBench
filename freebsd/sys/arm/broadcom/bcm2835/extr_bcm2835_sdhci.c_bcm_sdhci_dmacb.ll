; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_dmacb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_dmacb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.bcm_sdhci_softc = type { i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i32, i32)* @bcm_sdhci_dmacb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sdhci_dmacb(i8* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm_sdhci_softc*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.bcm_sdhci_softc*
  store %struct.bcm_sdhci_softc* %12, %struct.bcm_sdhci_softc** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %9, align 8
  %15 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %9, align 8
  %18 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %48, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %9, align 8
  %31 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %9, align 8
  %43 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %23
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %19

51:                                               ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
