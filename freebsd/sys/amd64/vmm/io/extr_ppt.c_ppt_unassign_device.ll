; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_unassign_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_unassign_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.pptdev = type { %struct.vm*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppt_unassign_device(%struct.vm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pptdev*, align 8
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.pptdev* @ppt_find(i32 %11, i32 %12, i32 %13)
  store %struct.pptdev* %14, %struct.pptdev** %10, align 8
  %15 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %16 = icmp ne %struct.pptdev* %15, null
  br i1 %16, label %17, label %54

17:                                               ; preds = %4
  %18 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %19 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %18, i32 0, i32 0
  %20 = load %struct.vm*, %struct.vm** %19, align 8
  %21 = load %struct.vm*, %struct.vm** %6, align 8
  %22 = icmp ne %struct.vm* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @EBUSY, align 4
  store i32 %24, i32* %5, align 4
  br label %56

25:                                               ; preds = %17
  %26 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %27 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pci_save_state(i32 %28)
  %30 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %31 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ppt_pci_reset(i32 %32)
  %34 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %35 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pci_restore_state(i32 %36)
  %38 = load %struct.vm*, %struct.vm** %6, align 8
  %39 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %40 = call i32 @ppt_unmap_mmio(%struct.vm* %38, %struct.pptdev* %39)
  %41 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %42 = call i32 @ppt_teardown_msi(%struct.pptdev* %41)
  %43 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %44 = call i32 @ppt_teardown_msix(%struct.pptdev* %43)
  %45 = load %struct.vm*, %struct.vm** %6, align 8
  %46 = call i32 @vm_iommu_domain(%struct.vm* %45)
  %47 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %48 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pci_get_rid(i32 %49)
  %51 = call i32 @iommu_remove_device(i32 %46, i32 %50)
  %52 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %53 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %52, i32 0, i32 0
  store %struct.vm* null, %struct.vm** %53, align 8
  store i32 0, i32* %5, align 4
  br label %56

54:                                               ; preds = %4
  %55 = load i32, i32* @ENOENT, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %25, %23
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.pptdev* @ppt_find(i32, i32, i32) #1

declare dso_local i32 @pci_save_state(i32) #1

declare dso_local i32 @ppt_pci_reset(i32) #1

declare dso_local i32 @pci_restore_state(i32) #1

declare dso_local i32 @ppt_unmap_mmio(%struct.vm*, %struct.pptdev*) #1

declare dso_local i32 @ppt_teardown_msi(%struct.pptdev*) #1

declare dso_local i32 @ppt_teardown_msix(%struct.pptdev*) #1

declare dso_local i32 @iommu_remove_device(i32, i32) #1

declare dso_local i32 @vm_iommu_domain(%struct.vm*) #1

declare dso_local i32 @pci_get_rid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
