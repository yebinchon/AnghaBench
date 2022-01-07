; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_msr_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_msr_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_PENTIUM_START = common dso_local global i32 0, align 4
@MSR_PENTIUM_END = common dso_local global i32 0, align 4
@MSR_AMD6TH_START = common dso_local global i32 0, align 4
@MSR_AMD6TH_END = common dso_local global i32 0, align 4
@MSR_AMD7TH_START = common dso_local global i32 0, align 4
@MSR_AMD7TH_END = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @svm_msr_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_msr_index(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  store i32 -1, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = srem i32 %11, 4
  %13 = mul nsw i32 %12, 2
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MSR_PENTIUM_START, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MSR_PENTIUM_END, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 %23, 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %74

26:                                               ; preds = %18, %3
  %27 = load i32, i32* @MSR_PENTIUM_END, align 4
  %28 = load i32, i32* @MSR_PENTIUM_START, align 4
  %29 = sub nsw i32 %27, %28
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MSR_AMD6TH_START, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MSR_AMD6TH_END, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @MSR_AMD6TH_START, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %44, %45
  %47 = sdiv i32 %46, 4
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %4, align 4
  br label %74

49:                                               ; preds = %36, %26
  %50 = load i32, i32* @MSR_AMD6TH_END, align 4
  %51 = load i32, i32* @MSR_AMD6TH_START, align 4
  %52 = sub nsw i32 %50, %51
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MSR_AMD7TH_START, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %49
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MSR_AMD7TH_END, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @MSR_AMD7TH_START, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %67, %68
  %70 = sdiv i32 %69, 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  store i32 0, i32* %4, align 4
  br label %74

72:                                               ; preds = %59, %49
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %63, %40, %22
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
