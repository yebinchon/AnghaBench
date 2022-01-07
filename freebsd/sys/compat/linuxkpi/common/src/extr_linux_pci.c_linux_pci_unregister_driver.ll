; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_pci_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_pci_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_driver = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@pci_lock = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_pci_unregister_driver(%struct.pci_driver* %0) #0 {
  %2 = alloca %struct.pci_driver*, align 8
  %3 = alloca i32*, align 8
  store %struct.pci_driver* %0, %struct.pci_driver** %2, align 8
  %4 = call i32* @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %3, align 8
  %5 = call i32 @spin_lock(i32* @pci_lock)
  %6 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %7 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %6, i32 0, i32 1
  %8 = call i32 @list_del(i32* %7)
  %9 = call i32 @spin_unlock(i32* @pci_lock)
  %10 = call i32 @mtx_lock(i32* @Giant)
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.pci_driver*, %struct.pci_driver** %2, align 8
  %16 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %15, i32 0, i32 0
  %17 = call i32 @devclass_delete_driver(i32* %14, i32* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = call i32 @mtx_unlock(i32* @Giant)
  ret void
}

declare dso_local i32* @devclass_find(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @devclass_delete_driver(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
