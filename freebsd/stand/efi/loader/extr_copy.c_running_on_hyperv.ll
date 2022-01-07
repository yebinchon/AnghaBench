; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_copy.c_running_on_hyperv.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_copy.c_running_on_hyperv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPUID2_HV = common dso_local global i32 0, align 4
@CPUID_LEAF_HV_MAXLEAF = common dso_local global i32 0, align 4
@CPUID_LEAF_HV_LIMITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Microsoft Hv\00", align 1
@CPUID_LEAF_HV_INTERFACE = common dso_local global i32 0, align 4
@CPUID_HV_IFACE_HYPERV = common dso_local global i32 0, align 4
@CPUID_LEAF_HV_FEATURES = common dso_local global i32 0, align 4
@CPUID_HV_MSR_HYPERCALL = common dso_local global i32 0, align 4
@CPUID_HV_MSR_TIME_REFCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @running_on_hyperv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @running_on_hyperv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = alloca [4 x i32], align 16
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %5 = call i32 @do_cpuid(i32 1, i32* %4)
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CPUID2_HV, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %66

12:                                               ; preds = %0
  %13 = load i32, i32* @CPUID_LEAF_HV_MAXLEAF, align 4
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %15 = call i32 @do_cpuid(i32 %13, i32* %14)
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %17 = load i32, i32* %16, align 16
  %18 = load i32, i32* @CPUID_LEAF_HV_LIMITS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %66

21:                                               ; preds = %12
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = bitcast [16 x i8]* %2 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 16
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %27 = load i32, i32* %26, align 8
  %28 = bitcast [16 x i8]* %2 to i32*
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = bitcast [16 x i8]* %2 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 %31, i32* %33, align 8
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 12
  store i8 0, i8* %34, align 4
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %66

39:                                               ; preds = %21
  %40 = load i32, i32* @CPUID_LEAF_HV_INTERFACE, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %42 = call i32 @do_cpuid(i32 %40, i32* %41)
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = load i32, i32* @CPUID_HV_IFACE_HYPERV, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %1, align 4
  br label %66

48:                                               ; preds = %39
  %49 = load i32, i32* @CPUID_LEAF_HV_FEATURES, align 4
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %51 = call i32 @do_cpuid(i32 %49, i32* %50)
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %53 = load i32, i32* %52, align 16
  %54 = load i32, i32* @CPUID_HV_MSR_HYPERCALL, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 0, i32* %1, align 4
  br label %66

58:                                               ; preds = %48
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = load i32, i32* @CPUID_HV_MSR_TIME_REFCNT, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %1, align 4
  br label %66

65:                                               ; preds = %58
  store i32 1, i32* %1, align 4
  br label %66

66:                                               ; preds = %65, %64, %57, %47, %38, %20, %11
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
