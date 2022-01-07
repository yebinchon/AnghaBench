; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_pdev_dma_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_pdev_dma_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.linux_dma_priv* }
%struct.linux_dma_priv = type { i32, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @linux_pdev_dma_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_pdev_dma_uninit(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.linux_dma_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %6, align 8
  store %struct.linux_dma_priv* %7, %struct.linux_dma_priv** %3, align 8
  %8 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %3, align 8
  %9 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %3, align 8
  %14 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @bus_dma_tag_destroy(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %3, align 8
  %19 = getelementptr inbounds %struct.linux_dma_priv, %struct.linux_dma_priv* %18, i32 0, i32 0
  %20 = call i32 @mtx_destroy(i32* %19)
  %21 = load %struct.linux_dma_priv*, %struct.linux_dma_priv** %3, align 8
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = call i32 @free(%struct.linux_dma_priv* %21, i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.linux_dma_priv* null, %struct.linux_dma_priv** %26, align 8
  ret i32 0
}

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.linux_dma_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
