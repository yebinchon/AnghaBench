; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c__linux_pci_register_driver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c__linux_pci_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_driver = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@curthread = common dso_local global i32 0, align 4
@pci_lock = common dso_local global i32 0, align 4
@pci_drivers = common dso_local global i32 0, align 4
@pci_methods = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@BUS_PASS_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_driver*, i32)* @_linux_pci_register_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_linux_pci_register_driver(%struct.pci_driver* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_driver* %0, %struct.pci_driver** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @curthread, align 4
  %7 = call i32 @linux_set_current(i32 %6)
  %8 = call i32 @spin_lock(i32* @pci_lock)
  %9 = load %struct.pci_driver*, %struct.pci_driver** %3, align 8
  %10 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %9, i32 0, i32 3
  %11 = call i32 @list_add(i32* %10, i32* @pci_drivers)
  %12 = call i32 @spin_unlock(i32* @pci_lock)
  %13 = load %struct.pci_driver*, %struct.pci_driver** %3, align 8
  %14 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pci_driver*, %struct.pci_driver** %3, align 8
  %17 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @pci_methods, align 4
  %20 = load %struct.pci_driver*, %struct.pci_driver** %3, align 8
  %21 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.pci_driver*, %struct.pci_driver** %3, align 8
  %24 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 4, i32* %25, align 4
  %26 = call i32 @mtx_lock(i32* @Giant)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.pci_driver*, %struct.pci_driver** %3, align 8
  %29 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %28, i32 0, i32 1
  %30 = load i32, i32* @BUS_PASS_DEFAULT, align 4
  %31 = load %struct.pci_driver*, %struct.pci_driver** %3, align 8
  %32 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %31, i32 0, i32 0
  %33 = call i32 @devclass_add_driver(i32 %27, %struct.TYPE_2__* %29, i32 %30, i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = call i32 @mtx_unlock(i32* @Giant)
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 0, %35
  ret i32 %36
}

declare dso_local i32 @linux_set_current(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @devclass_add_driver(i32, %struct.TYPE_2__*, i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
