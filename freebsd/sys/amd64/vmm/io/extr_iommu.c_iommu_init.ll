; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_iommu.c_iommu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_iommu.c_iommu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iommu_enable = common dso_local global i32 0, align 4
@iommu_ops_intel = common dso_local global i32 0, align 4
@ops = common dso_local global i32* null, align 8
@iommu_ops_amd = common dso_local global i32 0, align 4
@iommu_avail = common dso_local global i32 0, align 4
@host_domain = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"iommu_init: unable to create a host domain\00", align 1
@pci_add_device = common dso_local global i32 0, align 4
@iommu_pci_add = common dso_local global i32 0, align 4
@add_tag = common dso_local global i8* null, align 8
@pci_delete_device = common dso_local global i32 0, align 4
@iommu_pci_delete = common dso_local global i32 0, align 4
@delete_tag = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"ppt\00", align 1
@PCI_BUSMAX = common dso_local global i32 0, align 4
@PCI_SLOTMAX = common dso_local global i32 0, align 4
@PCI_FUNCMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @iommu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = load i32, i32* @iommu_enable, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %95

11:                                               ; preds = %0
  %12 = call i64 (...) @vmm_is_intel()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32* @iommu_ops_intel, i32** @ops, align 8
  br label %21

15:                                               ; preds = %11
  %16 = call i64 (...) @vmm_is_amd()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32* @iommu_ops_amd, i32** @ops, align 8
  br label %20

19:                                               ; preds = %15
  store i32* null, i32** @ops, align 8
  br label %20

20:                                               ; preds = %19, %18
  br label %21

21:                                               ; preds = %20, %14
  %22 = call i32 (...) @IOMMU_INIT()
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %95

26:                                               ; preds = %21
  store i32 1, i32* @iommu_avail, align 4
  %27 = call i32 (...) @vmm_mem_maxaddr()
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @IOMMU_CREATE_DOMAIN(i32 %28)
  store i32* %29, i32** @host_domain, align 8
  %30 = load i32*, i32** @host_domain, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 (...) @IOMMU_CLEANUP()
  store i32* null, i32** @ops, align 8
  store i32 0, i32* @iommu_avail, align 4
  br label %95

35:                                               ; preds = %26
  %36 = load i32*, i32** @host_domain, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @iommu_create_mapping(i32* %36, i32 0, i32 0, i32 %37)
  %39 = load i32, i32* @pci_add_device, align 4
  %40 = load i32, i32* @iommu_pci_add, align 4
  %41 = call i8* @EVENTHANDLER_REGISTER(i32 %39, i32 %40, i32* null, i32 0)
  store i8* %41, i8** @add_tag, align 8
  %42 = load i32, i32* @pci_delete_device, align 4
  %43 = load i32, i32* @iommu_pci_delete, align 4
  %44 = call i8* @EVENTHANDLER_REGISTER(i32 %42, i32 %43, i32* null, i32 0)
  store i8* %44, i8** @delete_tag, align 8
  %45 = call i32* @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %45, i32** %6, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %90, %35
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @PCI_BUSMAX, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %93

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %86, %50
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @PCI_SLOTMAX, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %82, %55
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @PCI_FUNCMAX, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %56
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32* @pci_find_dbsf(i32 0, i32 %61, i32 %62, i32 %63)
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %82

68:                                               ; preds = %60
  %69 = load i32*, i32** %6, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32*, i32** %7, align 8
  %73 = call i32* @device_get_devclass(i32* %72)
  %74 = load i32*, i32** %6, align 8
  %75 = icmp eq i32* %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %82

77:                                               ; preds = %71, %68
  %78 = load i32*, i32** @host_domain, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @pci_get_rid(i32* %79)
  %81 = call i32 @iommu_add_device(i32* %78, i32 %80)
  br label %82

82:                                               ; preds = %77, %76, %67
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %56

85:                                               ; preds = %56
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %51

89:                                               ; preds = %51
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %2, align 4
  br label %46

93:                                               ; preds = %46
  %94 = call i32 (...) @IOMMU_ENABLE()
  br label %95

95:                                               ; preds = %93, %32, %25, %10
  ret void
}

declare dso_local i64 @vmm_is_intel(...) #1

declare dso_local i64 @vmm_is_amd(...) #1

declare dso_local i32 @IOMMU_INIT(...) #1

declare dso_local i32 @vmm_mem_maxaddr(...) #1

declare dso_local i32* @IOMMU_CREATE_DOMAIN(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @IOMMU_CLEANUP(...) #1

declare dso_local i32 @iommu_create_mapping(i32*, i32, i32, i32) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32* @devclass_find(i8*) #1

declare dso_local i32* @pci_find_dbsf(i32, i32, i32, i32) #1

declare dso_local i32* @device_get_devclass(i32*) #1

declare dso_local i32 @iommu_add_device(i32*, i32) #1

declare dso_local i32 @pci_get_rid(i32*) #1

declare dso_local i32 @IOMMU_ENABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
