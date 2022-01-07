; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_iommu.c_iommu_create_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_iommu.c_iommu_create_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iommu_create_domain.iommu_initted = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iommu_create_domain(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load volatile i32, i32* @iommu_create_domain.iommu_initted, align 4
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = call i64 @atomic_cmpset_int(i32* @iommu_create_domain.iommu_initted, i32 0, i32 1)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = call i32 (...) @iommu_init()
  %10 = call i32 @atomic_store_rel_int(i32* @iommu_create_domain.iommu_initted, i32 2)
  br label %18

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %15, %11
  %13 = load volatile i32, i32* @iommu_create_domain.iommu_initted, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @cpu_spinwait()
  br label %12

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* %2, align 4
  %21 = call i8* @IOMMU_CREATE_DOMAIN(i32 %20)
  ret i8* %21
}

declare dso_local i64 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @iommu_init(...) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i8* @IOMMU_CREATE_DOMAIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
