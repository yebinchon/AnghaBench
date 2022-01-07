; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_initcpu.c_initializecpucache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_initcpu.c_initializecpucache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_feature = common dso_local global i32 0, align 4
@CPUID_CLFSH = common dso_local global i32 0, align 4
@cpu_procinfo = common dso_local global i32 0, align 4
@cpu_clflush_line_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hw.clflush_disable\00", align 1
@hw_clflush_disable = common dso_local global i32 0, align 4
@vm_guest = common dso_local global i64 0, align 8
@VM_GUEST_NO = common dso_local global i64 0, align 8
@CPUID_STDEXT_CLFLUSHOPT = common dso_local global i32 0, align 4
@cpu_stdext_feature = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initializecpucache() #0 {
  %1 = load i32, i32* @cpu_feature, align 4
  %2 = load i32, i32* @CPUID_CLFSH, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i32, i32* @cpu_procinfo, align 4
  %7 = ashr i32 %6, 8
  %8 = and i32 %7, 255
  %9 = mul nsw i32 %8, 8
  store i32 %9, i32* @cpu_clflush_line_size, align 4
  br label %10

10:                                               ; preds = %5, %0
  %11 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* @hw_clflush_disable)
  %12 = load i64, i64* @vm_guest, align 8
  %13 = load i64, i64* @VM_GUEST_NO, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load i32, i32* @hw_clflush_disable, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i32, i32* @CPUID_CLFSH, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* @cpu_feature, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* @cpu_feature, align 4
  %23 = load i32, i32* @CPUID_STDEXT_CLFLUSHOPT, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* @cpu_stdext_feature, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* @cpu_stdext_feature, align 4
  br label %27

27:                                               ; preds = %18, %15, %10
  %28 = load i32, i32* @hw_clflush_disable, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* @CPUID_CLFSH, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* @cpu_feature, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* @cpu_feature, align 4
  %35 = load i32, i32* @CPUID_STDEXT_CLFLUSHOPT, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* @cpu_stdext_feature, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* @cpu_stdext_feature, align 4
  br label %39

39:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
