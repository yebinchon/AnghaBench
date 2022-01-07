; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_exit_inst_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_exit_inst_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxctx = type { i64 }
%struct.vm_exit = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@VM_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"vmx_exit_inst_error: invalid inst_fail_status %d\00", align 1
@VM_EXITCODE_VMX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"vm_exit_inst_error: vmx_enter_guest returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxctx*, i32, %struct.vm_exit*)* @vmx_exit_inst_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_exit_inst_error(%struct.vmxctx* %0, i32 %1, %struct.vm_exit* %2) #0 {
  %4 = alloca %struct.vmxctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_exit*, align 8
  store %struct.vmxctx* %0, %struct.vmxctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vm_exit* %2, %struct.vm_exit** %6, align 8
  %7 = load %struct.vmxctx*, %struct.vmxctx** %4, align 8
  %8 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VM_SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load %struct.vmxctx*, %struct.vmxctx** %4, align 8
  %14 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @KASSERT(i32 %12, i8* %16)
  %18 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %19 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @VM_EXITCODE_VMX, align 4
  %21 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %22 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.vmxctx*, %struct.vmxctx** %4, align 8
  %24 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %27 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 %25, i64* %29, align 8
  %30 = call i32 (...) @vmcs_instruction_error()
  %31 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %32 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  store i32 %30, i32* %34, align 4
  %35 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %36 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store i32 -1, i32* %38, align 8
  %39 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %40 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32 -1, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %50 [
    i32 128, label %44
    i32 129, label %44
    i32 130, label %44
  ]

44:                                               ; preds = %3, %3, %3
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.vm_exit*, %struct.vm_exit** %6, align 8
  %47 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 8
  br label %53

50:                                               ; preds = %3
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %44
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vmcs_instruction_error(...) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
