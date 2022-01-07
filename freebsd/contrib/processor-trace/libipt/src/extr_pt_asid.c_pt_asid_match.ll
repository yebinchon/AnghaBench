; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_asid.c_pt_asid_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_asid.c_pt_asid_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_asid = type { i64, i64 }

@pte_internal = common dso_local global i32 0, align 4
@pt_asid_no_cr3 = common dso_local global i64 0, align 8
@pt_asid_no_vmcs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_asid_match(%struct.pt_asid* %0, %struct.pt_asid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_asid*, align 8
  %5 = alloca %struct.pt_asid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pt_asid* %0, %struct.pt_asid** %4, align 8
  store %struct.pt_asid* %1, %struct.pt_asid** %5, align 8
  %10 = load %struct.pt_asid*, %struct.pt_asid** %4, align 8
  %11 = icmp ne %struct.pt_asid* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.pt_asid*, %struct.pt_asid** %5, align 8
  %14 = icmp ne %struct.pt_asid* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %57

18:                                               ; preds = %12
  %19 = load %struct.pt_asid*, %struct.pt_asid** %4, align 8
  %20 = getelementptr inbounds %struct.pt_asid, %struct.pt_asid* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.pt_asid*, %struct.pt_asid** %5, align 8
  %23 = getelementptr inbounds %struct.pt_asid, %struct.pt_asid* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @pt_asid_no_cr3, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @pt_asid_no_cr3, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %57

37:                                               ; preds = %32, %28, %18
  %38 = load %struct.pt_asid*, %struct.pt_asid** %4, align 8
  %39 = getelementptr inbounds %struct.pt_asid, %struct.pt_asid* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %8, align 8
  %41 = load %struct.pt_asid*, %struct.pt_asid** %5, align 8
  %42 = getelementptr inbounds %struct.pt_asid, %struct.pt_asid* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @pt_asid_no_vmcs, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @pt_asid_no_vmcs, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %57

56:                                               ; preds = %51, %47, %37
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %36, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
