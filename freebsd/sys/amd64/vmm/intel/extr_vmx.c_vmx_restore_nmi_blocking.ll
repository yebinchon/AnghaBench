; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_restore_nmi_blocking.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_restore_nmi_blocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Restore Virtual-NMI blocking\00", align 1
@VMCS_GUEST_INTERRUPTIBILITY = common dso_local global i32 0, align 4
@VMCS_INTERRUPTIBILITY_NMI_BLOCKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmx*, i32)* @vmx_restore_nmi_blocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_restore_nmi_blocking(%struct.vmx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vmx*, %struct.vmx** %3, align 8
  %7 = getelementptr inbounds %struct.vmx, %struct.vmx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @VCPU_CTR0(i32 %8, i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @VMCS_GUEST_INTERRUPTIBILITY, align 4
  %12 = call i32 @vmcs_read(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @VMCS_INTERRUPTIBILITY_NMI_BLOCKING, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @VMCS_GUEST_INTERRUPTIBILITY, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @vmcs_write(i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @VCPU_CTR0(i32, i32, i8*) #1

declare dso_local i32 @vmcs_read(i32) #1

declare dso_local i32 @vmcs_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
