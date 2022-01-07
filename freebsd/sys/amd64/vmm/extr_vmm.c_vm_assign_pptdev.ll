; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_assign_pptdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_assign_pptdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32* }

@.str = private unnamed_addr constant [37 x i8] c"vm_assign_pptdev: iommu must be NULL\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_assign_pptdev(%struct.vm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.vm*, %struct.vm** %6, align 8
  %13 = call i64 @ppt_assigned_devices(%struct.vm* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %4
  %16 = load %struct.vm*, %struct.vm** %6, align 8
  %17 = getelementptr inbounds %struct.vm, %struct.vm* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.vm*, %struct.vm** %6, align 8
  %23 = call i32 @vmm_sysmem_maxaddr(%struct.vm* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32* @iommu_create_domain(i32 %24)
  %26 = load %struct.vm*, %struct.vm** %6, align 8
  %27 = getelementptr inbounds %struct.vm, %struct.vm* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.vm*, %struct.vm** %6, align 8
  %29 = getelementptr inbounds %struct.vm, %struct.vm* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %15
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %5, align 4
  br label %44

34:                                               ; preds = %15
  %35 = load %struct.vm*, %struct.vm** %6, align 8
  %36 = call i32 @vm_iommu_map(%struct.vm* %35)
  br label %37

37:                                               ; preds = %34, %4
  %38 = load %struct.vm*, %struct.vm** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @ppt_assign_device(%struct.vm* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @ppt_assigned_devices(%struct.vm*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vmm_sysmem_maxaddr(%struct.vm*) #1

declare dso_local i32* @iommu_create_domain(i32) #1

declare dso_local i32 @vm_iommu_map(%struct.vm*) #1

declare dso_local i32 @ppt_assign_device(%struct.vm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
