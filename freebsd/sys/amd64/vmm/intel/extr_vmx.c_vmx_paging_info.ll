; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_paging_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_paging_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_guest_paging = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_guest_paging*)* @vmx_paging_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_paging_info(%struct.vm_guest_paging* %0) #0 {
  %2 = alloca %struct.vm_guest_paging*, align 8
  store %struct.vm_guest_paging* %0, %struct.vm_guest_paging** %2, align 8
  %3 = call i32 (...) @vmcs_guest_cr3()
  %4 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %2, align 8
  %5 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 4
  %6 = call i32 (...) @vmx_cpl()
  %7 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %2, align 8
  %8 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = call i32 (...) @vmx_cpu_mode()
  %10 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %2, align 8
  %11 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = call i32 (...) @vmx_paging_mode()
  %13 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %2, align 8
  %14 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

declare dso_local i32 @vmcs_guest_cr3(...) #1

declare dso_local i32 @vmx_cpl(...) #1

declare dso_local i32 @vmx_cpu_mode(...) #1

declare dso_local i32 @vmx_paging_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
