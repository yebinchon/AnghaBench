; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_emulate_rdmsr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_emulate_rdmsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_softc = type { i32 }
%struct.vmcb_state = type { i32 }
%struct.svm_regctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svm_softc*, i32, i32, i32*)* @emulate_rdmsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_rdmsr(%struct.svm_softc* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.svm_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmcb_state*, align 8
  %10 = alloca %struct.svm_regctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.svm_softc* %0, %struct.svm_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @lapic_msr(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.svm_softc*, %struct.svm_softc** %5, align 8
  %18 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @lapic_rdmsr(i32 %19, i32 %20, i32 %21, i32* %11, i32* %22)
  store i32 %23, i32* %12, align 4
  br label %30

24:                                               ; preds = %4
  %25 = load %struct.svm_softc*, %struct.svm_softc** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @svm_rdmsr(%struct.svm_softc* %25, i32 %26, i32 %27, i32* %11, i32* %28)
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %24, %16
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.svm_softc*, %struct.svm_softc** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.vmcb_state* @svm_get_vmcb_state(%struct.svm_softc* %34, i32 %35)
  store %struct.vmcb_state* %36, %struct.vmcb_state** %9, align 8
  %37 = load %struct.svm_softc*, %struct.svm_softc** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.svm_regctx* @svm_get_guest_regctx(%struct.svm_softc* %37, i32 %38)
  store %struct.svm_regctx* %39, %struct.svm_regctx** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.vmcb_state*, %struct.vmcb_state** %9, align 8
  %42 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = ashr i32 %43, 32
  %45 = load %struct.svm_regctx*, %struct.svm_regctx** %10, align 8
  %46 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %33, %30
  %48 = load i32, i32* %12, align 4
  ret i32 %48
}

declare dso_local i64 @lapic_msr(i32) #1

declare dso_local i32 @lapic_rdmsr(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svm_rdmsr(%struct.svm_softc*, i32, i32, i32*, i32*) #1

declare dso_local %struct.vmcb_state* @svm_get_vmcb_state(%struct.svm_softc*, i32) #1

declare dso_local %struct.svm_regctx* @svm_get_guest_regctx(%struct.svm_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
