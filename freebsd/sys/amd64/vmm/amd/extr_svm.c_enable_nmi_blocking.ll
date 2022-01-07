; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_enable_nmi_blocking.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_enable_nmi_blocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_softc = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"vNMI already blocked\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"vNMI blocking enabled\00", align 1
@VMCB_CTRL1_INTCPT = common dso_local global i32 0, align 4
@VMCB_INTCPT_IRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svm_softc*, i32)* @enable_nmi_blocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_nmi_blocking(%struct.svm_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.svm_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.svm_softc* %0, %struct.svm_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.svm_softc*, %struct.svm_softc** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @nmi_blocked(%struct.svm_softc* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.svm_softc*, %struct.svm_softc** %3, align 8
  %13 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @VCPU_CTR0(i32 %14, i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.svm_softc*, %struct.svm_softc** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @VMCB_CTRL1_INTCPT, align 4
  %20 = load i32, i32* @VMCB_INTCPT_IRET, align 4
  %21 = call i32 @svm_enable_intercept(%struct.svm_softc* %17, i32 %18, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @nmi_blocked(%struct.svm_softc*, i32) #1

declare dso_local i32 @VCPU_CTR0(i32, i32, i8*) #1

declare dso_local i32 @svm_enable_intercept(%struct.svm_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
