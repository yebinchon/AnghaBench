; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_setreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_setreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_softc = type { i32 }

@VM_REG_GUEST_INTR_SHADOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"svm_setreg: unknown register %#x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @svm_setreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_setreg(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.svm_softc*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.svm_softc*
  store %struct.svm_softc* %13, %struct.svm_softc** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @VM_REG_GUEST_INTR_SHADOW, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.svm_softc*, %struct.svm_softc** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @svm_modify_intr_shadow(%struct.svm_softc* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %49

22:                                               ; preds = %4
  %23 = load %struct.svm_softc*, %struct.svm_softc** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @vmcb_write(%struct.svm_softc* %23, i32 %24, i32 %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %49

30:                                               ; preds = %22
  %31 = load %struct.svm_softc*, %struct.svm_softc** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @svm_get_guest_regctx(%struct.svm_softc* %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32* @swctx_regptr(i32 %33, i32 %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %5, align 4
  br label %49

41:                                               ; preds = %30
  %42 = load %struct.svm_softc*, %struct.svm_softc** %10, align 8
  %43 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @VCPU_CTR1(i32 %44, i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %41, %38, %29, %17
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @svm_modify_intr_shadow(%struct.svm_softc*, i32, i32) #1

declare dso_local i64 @vmcb_write(%struct.svm_softc*, i32, i32, i32) #1

declare dso_local i32* @swctx_regptr(i32, i32) #1

declare dso_local i32 @svm_get_guest_regctx(%struct.svm_softc*, i32) #1

declare dso_local i32 @VCPU_CTR1(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
