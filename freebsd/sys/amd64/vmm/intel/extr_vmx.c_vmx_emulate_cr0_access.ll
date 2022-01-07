; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_emulate_cr0_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_emulate_cr0_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32 }

@UNHANDLED = common dso_local global i32 0, align 4
@VMCS_CR0_SHADOW = common dso_local global i32 0, align 4
@cr0_ones_mask = common dso_local global i32 0, align 4
@cr0_zeros_mask = common dso_local global i32 0, align 4
@VMCS_GUEST_CR0 = common dso_local global i32 0, align 4
@CR0_PG = common dso_local global i32 0, align 4
@VMCS_GUEST_IA32_EFER = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@VMCS_ENTRY_CTLS = common dso_local global i32 0, align 4
@VM_ENTRY_GUEST_LMA = common dso_local global i32 0, align 4
@HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmx*, i32, i32)* @vmx_emulate_cr0_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_emulate_cr0_access(%struct.vmx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 240
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @UNHANDLED, align 4
  store i32 %16, i32* %4, align 4
  br label %66

17:                                               ; preds = %3
  %18 = load %struct.vmx*, %struct.vmx** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 15
  %23 = call i32 @vmx_get_guest_reg(%struct.vmx* %18, i32 %19, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @VMCS_CR0_SHADOW, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @vmcs_write(i32 %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @cr0_ones_mask, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @cr0_zeros_mask, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @VMCS_GUEST_CR0, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @vmcs_write(i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @CR0_PG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %17
  %42 = load i32, i32* @VMCS_GUEST_IA32_EFER, align 4
  %43 = call i32 @vmcs_read(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @EFER_LME, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %41
  %49 = load i32, i32* @EFER_LMA, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @VMCS_GUEST_IA32_EFER, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @vmcs_write(i32 %52, i32 %53)
  %55 = load i32, i32* @VMCS_ENTRY_CTLS, align 4
  %56 = call i32 @vmcs_read(i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* @VM_ENTRY_GUEST_LMA, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @VMCS_ENTRY_CTLS, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @vmcs_write(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %48, %41
  br label %64

64:                                               ; preds = %63, %17
  %65 = load i32, i32* @HANDLED, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @vmx_get_guest_reg(%struct.vmx*, i32, i32) #1

declare dso_local i32 @vmcs_write(i32, i32) #1

declare dso_local i32 @vmcs_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
