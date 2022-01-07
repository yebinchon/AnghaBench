; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_min_expiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_min_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i64* }
%struct.packed_rrset_data = type { i64, i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.packed_rrset_data*)* @min_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @min_expiry(%struct.module_env* %0, %struct.packed_rrset_data* %1) #0 {
  %3 = alloca %struct.module_env*, align 8
  %4 = alloca %struct.packed_rrset_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %3, align 8
  store %struct.packed_rrset_data* %1, %struct.packed_rrset_data** %4, align 8
  store i64 1296000, i64* %7, align 8
  %8 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %9 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %56, %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %14 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %17 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %15, %18
  %20 = icmp ult i64 %12, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %11
  %22 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %23 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %29 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @rrsig_get_expiry(i32 %27, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.module_env*, %struct.module_env** %3, align 8
  %37 = getelementptr inbounds %struct.module_env, %struct.module_env* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %35, %39
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %21
  %43 = load %struct.module_env*, %struct.module_env** %3, align 8
  %44 = getelementptr inbounds %struct.module_env, %struct.module_env* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %52, %42
  br label %55

55:                                               ; preds = %54, %21
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %11

59:                                               ; preds = %11
  %60 = load i64, i64* %7, align 8
  %61 = trunc i64 %60 to i32
  ret i32 %61
}

declare dso_local i64 @rrsig_get_expiry(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
