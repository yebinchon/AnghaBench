; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_get_wiredcnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_get_wiredcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vmm_stat_type = type { i32 }

@VMM_MEM_WIRED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, i32, %struct.vmm_stat_type*)* @vm_get_wiredcnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_get_wiredcnt(%struct.vm* %0, i32 %1, %struct.vmm_stat_type* %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmm_stat_type*, align 8
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vmm_stat_type* %2, %struct.vmm_stat_type** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = load %struct.vm*, %struct.vm** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VMM_MEM_WIRED, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = load %struct.vm*, %struct.vm** %4, align 8
  %15 = getelementptr inbounds %struct.vm, %struct.vm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vmspace_pmap(i32 %16)
  %18 = call i32 @pmap_wired_count(i32 %17)
  %19 = mul nsw i32 %13, %18
  %20 = call i32 @vmm_stat_set(%struct.vm* %10, i32 %11, i32 %12, i32 %19)
  br label %21

21:                                               ; preds = %9, %3
  ret void
}

declare dso_local i32 @vmm_stat_set(%struct.vm*, i32, i32, i32) #1

declare dso_local i32 @pmap_wired_count(i32) #1

declare dso_local i32 @vmspace_pmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
