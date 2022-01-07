; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.pci_dev*)* }

@curthread = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@pci_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @linux_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @curthread, align 4
  %5 = call i32 @linux_set_current(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.pci_dev* @device_get_softc(i32 %6)
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %11, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call i32 %12(%struct.pci_dev* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @M_DEVBUF, align 4
  %19 = call i32 @free(i32 %17, i32 %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = call i32 @linux_pdev_dma_uninit(%struct.pci_dev* %20)
  %22 = call i32 @spin_lock(i32* @pci_lock)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = call i32 @list_del(i32* %24)
  %26 = call i32 @spin_unlock(i32* @pci_lock)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @device_set_desc(i32 %27, i32* null)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @put_device(i32* %30)
  ret i32 0
}

declare dso_local i32 @linux_set_current(i32) #1

declare dso_local %struct.pci_dev* @device_get_softc(i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @linux_pdev_dma_uninit(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @device_set_desc(i32, i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
