; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_emulate_cr4_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_emulate_cr4_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32 }

@UNHANDLED = common dso_local global i32 0, align 4
@VMCS_CR4_SHADOW = common dso_local global i32 0, align 4
@cr4_ones_mask = common dso_local global i32 0, align 4
@cr4_zeros_mask = common dso_local global i32 0, align 4
@VMCS_GUEST_CR4 = common dso_local global i32 0, align 4
@HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmx*, i32, i32)* @vmx_emulate_cr4_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_emulate_cr4_access(%struct.vmx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 240
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @UNHANDLED, align 4
  store i32 %14, i32* %4, align 4
  br label %36

15:                                               ; preds = %3
  %16 = load %struct.vmx*, %struct.vmx** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 15
  %21 = call i32 @vmx_get_guest_reg(%struct.vmx* %16, i32 %17, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @VMCS_CR4_SHADOW, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @vmcs_write(i32 %22, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @cr4_ones_mask, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @cr4_zeros_mask, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @VMCS_GUEST_CR4, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @vmcs_write(i32 %32, i32 %33)
  %35 = load i32, i32* @HANDLED, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %15, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @vmx_get_guest_reg(%struct.vmx*, i32, i32) #1

declare dso_local i32 @vmcs_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
