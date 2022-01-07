; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_set_intercept.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_set_intercept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_softc = type { i32 }
%struct.vmcb_ctrl = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"invalid intercept index %d\00", align 1
@VMCB_CACHE_I = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"intercept[%d] modified from %#x to %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svm_softc*, i32, i32, i32, i32)* @svm_set_intercept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_set_intercept(%struct.svm_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.svm_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmcb_ctrl*, align 8
  %12 = alloca i32, align 4
  store %struct.svm_softc* %0, %struct.svm_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 5
  br label %18

18:                                               ; preds = %15, %5
  %19 = phi i1 [ false, %5 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %20, i8* %23)
  %25 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc* %25, i32 %26)
  store %struct.vmcb_ctrl* %27, %struct.vmcb_ctrl** %11, align 8
  %28 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %11, align 8
  %29 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %18
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %11, align 8
  %40 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %38
  store i32 %46, i32* %44, align 4
  br label %58

47:                                               ; preds = %18
  %48 = load i32, i32* %9, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %11, align 8
  %51 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %49
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %47, %37
  %59 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %11, align 8
  %60 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %58
  %69 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @VMCB_CACHE_I, align 4
  %72 = call i32 @svm_set_dirty(%struct.svm_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %74 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %11, align 8
  %80 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @VCPU_CTR3(i32 %75, i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i32 %85)
  br label %87

87:                                               ; preds = %68, %58
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc*, i32) #1

declare dso_local i32 @svm_set_dirty(%struct.svm_softc*, i32, i32) #1

declare dso_local i32 @VCPU_CTR3(i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
