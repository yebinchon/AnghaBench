; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_set_int_window_exiting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_set_int_window_exiting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PROCBASED_INT_WINDOW_EXITING = common dso_local global i32 0, align 4
@VMCS_PRI_PROC_BASED_CTLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Enabling interrupt window exiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmx*, i32)* @vmx_set_int_window_exiting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_set_int_window_exiting(%struct.vmx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmx*, align 8
  %4 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vmx*, %struct.vmx** %3, align 8
  %6 = getelementptr inbounds %struct.vmx, %struct.vmx* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PROCBASED_INT_WINDOW_EXITING, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = load i32, i32* @PROCBASED_INT_WINDOW_EXITING, align 4
  %18 = load %struct.vmx*, %struct.vmx** %3, align 8
  %19 = getelementptr inbounds %struct.vmx, %struct.vmx* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %17
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @VMCS_PRI_PROC_BASED_CTLS, align 4
  %28 = load %struct.vmx*, %struct.vmx** %3, align 8
  %29 = getelementptr inbounds %struct.vmx, %struct.vmx* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vmcs_write(i32 %27, i32 %35)
  %37 = load %struct.vmx*, %struct.vmx** %3, align 8
  %38 = getelementptr inbounds %struct.vmx, %struct.vmx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @VCPU_CTR0(i32 %39, i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @vmcs_write(i32, i32) #1

declare dso_local i32 @VCPU_CTR0(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
