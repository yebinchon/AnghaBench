; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_exit_handle_nmi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_exit_handle_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32 }
%struct.vm_exit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@PSL_I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"interrupts enabled\00", align 1
@EXIT_REASON_EXCEPTION = common dso_local global i64 0, align 8
@VMCS_EXIT_INTR_INFO = common dso_local global i32 0, align 4
@VMCS_INTR_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"VM exit interruption info invalid: %#x\00", align 1
@VMCS_INTR_T_MASK = common dso_local global i32 0, align 4
@VMCS_INTR_T_NMI = common dso_local global i32 0, align 4
@IDT_NMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"VM exit due to NMI has invalid vector: %#x\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Vectoring to NMI handler\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmx*, i32, %struct.vm_exit*)* @vmx_exit_handle_nmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_exit_handle_nmi(%struct.vmx* %0, i32 %1, %struct.vm_exit* %2) #0 {
  %4 = alloca %struct.vmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_exit*, align 8
  %7 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vm_exit* %2, %struct.vm_exit** %6, align 8
  %8 = call i32 (...) @read_rflags()
  %9 = load i32, i32* @PSL_I, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %15 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EXIT_REASON_EXCEPTION, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %54

22:                                               ; preds = %3
  %23 = load i32, i32* @VMCS_EXIT_INTR_INFO, align 4
  %24 = call i32 @vmcs_read(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @VMCS_INTR_VALID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %29, i8* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @VMCS_INTR_T_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @VMCS_INTR_T_NMI, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 255
  %42 = load i32, i32* @IDT_NMI, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @KASSERT(i32 %44, i8* %47)
  %49 = load %struct.vmx*, %struct.vmx** %4, align 8
  %50 = getelementptr inbounds %struct.vmx, %struct.vmx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @VCPU_CTR0(i32 %51, i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  call void asm sideeffect "int $$2", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %54

54:                                               ; preds = %21, %39, %22
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @read_rflags(...) #1

declare dso_local i32 @vmcs_read(i32) #1

declare dso_local i32 @VCPU_CTR0(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1309}
