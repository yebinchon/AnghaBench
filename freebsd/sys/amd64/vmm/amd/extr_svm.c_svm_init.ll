; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@VMCB_CACHE_DEFAULT = common dso_local global i32 0, align 4
@vmcb_clean = common dso_local global i32 0, align 4
@MAXCPU = common dso_local global i32 0, align 4
@asid = common dso_local global %struct.TYPE_2__* null, align 8
@nasid = common dso_local global i64 0, align 8
@svm_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @svm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 (...) @svm_available()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %46

10:                                               ; preds = %1
  %11 = call i32 (...) @check_svm_features()
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %46

16:                                               ; preds = %10
  %17 = load i32, i32* @VMCB_CACHE_DEFAULT, align 4
  %18 = load i32, i32* @vmcb_clean, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* @vmcb_clean, align 4
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %37, %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MAXCPU, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @asid, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 -1, i64* %29, align 8
  %30 = load i64, i64* @nasid, align 8
  %31 = sub nsw i64 %30, 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @asid, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i64 %31, i64* %36, align 8
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %20

40:                                               ; preds = %20
  %41 = call i32 (...) @svm_msr_init()
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @svm_npt_init(i32 %42)
  %44 = load i32, i32* @svm_enable, align 4
  %45 = call i32 @smp_rendezvous(i32* null, i32 %44, i32* null, i32* null)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %14, %8
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @svm_available(...) #1

declare dso_local i32 @check_svm_features(...) #1

declare dso_local i32 @svm_msr_init(...) #1

declare dso_local i32 @svm_npt_init(i32) #1

declare dso_local i32 @smp_rendezvous(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
