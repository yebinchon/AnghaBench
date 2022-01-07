; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_assign_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_assign_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.pptdev = type { i32, %struct.vm* }

@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppt_assign_device(%struct.vm* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br i1 %16, label %17, label %53

17:                                               ; preds = %4
  %18 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %19 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %18, i32 0, i32 1
  %20 = load %struct.vm*, %struct.vm** %19, align 8
  %21 = icmp ne %struct.vm* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %24 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %23, i32 0, i32 1
  %25 = load %struct.vm*, %struct.vm** %24, align 8
  %26 = load %struct.vm*, %struct.vm** %6, align 8
  %27 = icmp ne %struct.vm* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @EBUSY, align 4
  store i32 %29, i32* %5, align 4
  br label %55

30:                                               ; preds = %22, %17
  %31 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %32 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pci_save_state(i32 %33)
  %35 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %36 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ppt_pci_reset(i32 %37)
  %39 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %40 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pci_restore_state(i32 %41)
  %43 = load %struct.vm*, %struct.vm** %6, align 8
  %44 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %45 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %44, i32 0, i32 1
  store %struct.vm* %43, %struct.vm** %45, align 8
  %46 = load %struct.vm*, %struct.vm** %6, align 8
  %47 = call i32 @vm_iommu_domain(%struct.vm* %46)
  %48 = load %struct.pptdev*, %struct.pptdev** %10, align 8
  %49 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pci_get_rid(i32 %50)
  %52 = call i32 @iommu_add_device(i32 %47, i32 %51)
  store i32 0, i32* %5, align 4
  br label %55

53:                                               ; preds = %4
  %54 = load i32, i32* @ENOENT, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %30, %28
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.pptdev* @ppt_find(i32, i32, i32) #1

declare dso_local i32 @pci_save_state(i32) #1

declare dso_local i32 @ppt_pci_reset(i32) #1

declare dso_local i32 @pci_restore_state(i32) #1

declare dso_local i32 @iommu_add_device(i32, i32) #1

declare dso_local i32 @vm_iommu_domain(%struct.vm*) #1

declare dso_local i32 @pci_get_rid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
