; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_save_intinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_save_intinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_softc = type { i32 }
%struct.vmcb_ctrl = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"SVM:Pending INTINFO(0x%lx), vector=%d.\0A\00", align 1
@VCPU_EXITINTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svm_softc*, i32)* @svm_save_intinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_save_intinfo(%struct.svm_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.svm_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmcb_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.svm_softc* %0, %struct.svm_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.svm_softc*, %struct.svm_softc** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc* %7, i32 %8)
  store %struct.vmcb_ctrl* %9, %struct.vmcb_ctrl** %5, align 8
  %10 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %5, align 8
  %11 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @VMCB_EXITINTINFO_VALID(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.svm_softc*, %struct.svm_softc** %3, align 8
  %19 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @VMCB_EXITINTINFO_VECTOR(i32 %23)
  %25 = call i32 @VCPU_CTR2(i32 %20, i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load %struct.svm_softc*, %struct.svm_softc** %3, align 8
  %27 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @VCPU_EXITINTINFO, align 4
  %31 = call i32 @vmm_stat_incr(i32 %28, i32 %29, i32 %30, i32 1)
  %32 = load %struct.svm_softc*, %struct.svm_softc** %3, align 8
  %33 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @vm_exit_intinfo(i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc*, i32) #1

declare dso_local i32 @VMCB_EXITINTINFO_VALID(i32) #1

declare dso_local i32 @VCPU_CTR2(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @VMCB_EXITINTINFO_VECTOR(i32) #1

declare dso_local i32 @vmm_stat_incr(i32, i32, i32, i32) #1

declare dso_local i32 @vm_exit_intinfo(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
