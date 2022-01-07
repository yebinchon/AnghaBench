; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_check_svm_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_check_svm_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svm_feature = common dso_local global i32 0, align 4
@nasid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Insufficient ASIDs for guests: %#x\00", align 1
@AMD_CPUID_SVM_NP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"SVM: Nested Paging feature not available.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AMD_CPUID_SVM_NRIP_SAVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"SVM: NRIP Save feature not available.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_svm_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_svm_features() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %4 = call i32 @do_cpuid(i32 -2147483638, i32* %3)
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @svm_feature, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* @svm_feature, align 4
  %9 = load i32, i32* @nasid, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @nasid, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11, %0
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @nasid, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* @nasid, align 4
  %21 = icmp sgt i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* @nasid, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KASSERT(i32 %22, i8* %25)
  %27 = load i32, i32* @svm_feature, align 4
  %28 = load i32, i32* @AMD_CPUID_SVM_NP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %1, align 4
  br label %43

34:                                               ; preds = %19
  %35 = load i32, i32* @svm_feature, align 4
  %36 = load i32, i32* @AMD_CPUID_SVM_NRIP_SAVE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %1, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %42, %39, %31
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
