; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_iommu.c_IOMMU_CLEANUP.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_iommu.c_IOMMU_CLEANUP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@ops = common dso_local global %struct.TYPE_2__* null, align 8
@iommu_avail = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @IOMMU_CLEANUP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IOMMU_CLEANUP() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %2 = icmp ne %struct.TYPE_2__* %1, null
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load i64, i64* @iommu_avail, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (...)*, i32 (...)** %8, align 8
  %10 = call i32 (...) %9()
  br label %11

11:                                               ; preds = %6, %3, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
