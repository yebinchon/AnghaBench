; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_get_intercept.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_get_intercept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_softc = type { i32 }
%struct.vmcb_ctrl = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"invalid intercept index %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svm_softc*, i32, i32, i32)* @svm_get_intercept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_get_intercept(%struct.svm_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.svm_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmcb_ctrl*, align 8
  store %struct.svm_softc* %0, %struct.svm_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 5
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i1 [ false, %4 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %17, i8* %20)
  %22 = load %struct.svm_softc*, %struct.svm_softc** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc* %22, i32 %23)
  store %struct.vmcb_ctrl* %24, %struct.vmcb_ctrl** %9, align 8
  %25 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %9, align 8
  %26 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  ret i32 %36
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
