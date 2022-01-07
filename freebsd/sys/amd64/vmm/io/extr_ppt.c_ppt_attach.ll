; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pptdev = type { i32 }

@num_pptdevs = common dso_local global i32 0, align 4
@pptdev_list = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ppt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pptdev*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.pptdev* @device_get_softc(i32 %4)
  store %struct.pptdev* %5, %struct.pptdev** %3, align 8
  %6 = call i32 (...) @iommu_host_domain()
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @pci_get_rid(i32 %7)
  %9 = call i32 @iommu_remove_device(i32 %6, i32 %8)
  %10 = load i32, i32* @num_pptdevs, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @num_pptdevs, align 4
  %12 = load %struct.pptdev*, %struct.pptdev** %3, align 8
  %13 = load i32, i32* @next, align 4
  %14 = call i32 @TAILQ_INSERT_TAIL(i32* @pptdev_list, %struct.pptdev* %12, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.pptdev*, %struct.pptdev** %3, align 8
  %17 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* @bootverbose, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %1
  ret i32 0
}

declare dso_local %struct.pptdev* @device_get_softc(i32) #1

declare dso_local i32 @iommu_remove_device(i32, i32) #1

declare dso_local i32 @iommu_host_domain(...) #1

declare dso_local i32 @pci_get_rid(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pptdev*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
