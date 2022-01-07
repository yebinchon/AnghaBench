; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_set_pcpu_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_set_pcpu_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32, %struct.vmxstate* }
%struct.vmxstate = type { i64 }

@curcpu = common dso_local global i64 0, align 8
@VCPU_MIGRATIONS = common dso_local global i32 0, align 4
@VMCS_HOST_TR_BASE = common dso_local global i32 0, align 4
@VMCS_HOST_GDTR_BASE = common dso_local global i32 0, align 4
@VMCS_HOST_GS_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmx*, i32, i32)* @vmx_set_pcpu_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_set_pcpu_defaults(%struct.vmx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmxstate*, align 8
  store %struct.vmx* %0, %struct.vmx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vmx*, %struct.vmx** %4, align 8
  %9 = getelementptr inbounds %struct.vmx, %struct.vmx* %8, i32 0, i32 1
  %10 = load %struct.vmxstate*, %struct.vmxstate** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.vmxstate, %struct.vmxstate* %10, i64 %12
  store %struct.vmxstate* %13, %struct.vmxstate** %7, align 8
  %14 = load %struct.vmxstate*, %struct.vmxstate** %7, align 8
  %15 = getelementptr inbounds %struct.vmxstate, %struct.vmxstate* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @curcpu, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %43

20:                                               ; preds = %3
  %21 = load i64, i64* @curcpu, align 8
  %22 = load %struct.vmxstate*, %struct.vmxstate** %7, align 8
  %23 = getelementptr inbounds %struct.vmxstate, %struct.vmxstate* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.vmx*, %struct.vmx** %4, align 8
  %25 = getelementptr inbounds %struct.vmx, %struct.vmx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @VCPU_MIGRATIONS, align 4
  %29 = call i32 @vmm_stat_incr(i32 %26, i32 %27, i32 %28, i32 1)
  %30 = load i32, i32* @VMCS_HOST_TR_BASE, align 4
  %31 = call i32 (...) @vmm_get_host_trbase()
  %32 = call i32 @vmcs_write(i32 %30, i32 %31)
  %33 = load i32, i32* @VMCS_HOST_GDTR_BASE, align 4
  %34 = call i32 (...) @vmm_get_host_gdtrbase()
  %35 = call i32 @vmcs_write(i32 %33, i32 %34)
  %36 = load i32, i32* @VMCS_HOST_GS_BASE, align 4
  %37 = call i32 (...) @vmm_get_host_gsbase()
  %38 = call i32 @vmcs_write(i32 %36, i32 %37)
  %39 = load %struct.vmx*, %struct.vmx** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @vmx_invvpid(%struct.vmx* %39, i32 %40, i32 %41, i32 1)
  br label %43

43:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @vmm_stat_incr(i32, i32, i32, i32) #1

declare dso_local i32 @vmcs_write(i32, i32) #1

declare dso_local i32 @vmm_get_host_trbase(...) #1

declare dso_local i32 @vmm_get_host_gdtrbase(...) #1

declare dso_local i32 @vmm_get_host_gsbase(...) #1

declare dso_local i32 @vmx_invvpid(%struct.vmx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
