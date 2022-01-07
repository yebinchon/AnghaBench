; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_vmcb.c_vmcb_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_vmcb.c_vmcb_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_softc = type { i32 }
%struct.vmcb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid size %d for VMCB access: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svm_softc*, i32, i32, i32, i8*)* @vmcb_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmcb_access(%struct.svm_softc* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.svm_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.vmcb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.svm_softc* %0, %struct.svm_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load %struct.svm_softc*, %struct.svm_softc** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.vmcb* @svm_get_vmcb(%struct.svm_softc* %16, i32 %17)
  store %struct.vmcb* %18, %struct.vmcb** %12, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @VMCB_ACCESS_OFFSET(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @VMCB_ACCESS_BYTES(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, 4
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %6, align 4
  br label %75

30:                                               ; preds = %5
  %31 = load %struct.vmcb*, %struct.vmcb** %12, align 8
  %32 = bitcast %struct.vmcb* %31 to i8*
  store i8* %32, i8** %15, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %11, align 8
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %14, align 4
  switch i32 %38, label %59 [
    i32 8, label %39
    i32 4, label %39
    i32 2, label %39
  ]

39:                                               ; preds = %37, %37, %37
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i8*, i8** %15, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @memcpy(i8* %46, i8* %47, i32 %48)
  br label %58

50:                                               ; preds = %39
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @memcpy(i8* %51, i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %42
  br label %67

59:                                               ; preds = %37
  %60 = load %struct.svm_softc*, %struct.svm_softc** %7, align 8
  %61 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @VCPU_CTR1(i32 %62, i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %6, align 4
  br label %75

67:                                               ; preds = %58
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.svm_softc*, %struct.svm_softc** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @svm_set_dirty(%struct.svm_softc* %71, i32 %72, i32 -1)
  br label %74

74:                                               ; preds = %70, %67
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %59, %28
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.vmcb* @svm_get_vmcb(%struct.svm_softc*, i32) #1

declare dso_local i32 @VMCB_ACCESS_OFFSET(i32) #1

declare dso_local i32 @VMCB_ACCESS_BYTES(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @VCPU_CTR1(i32, i32, i8*, i32) #1

declare dso_local i32 @svm_set_dirty(%struct.svm_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
