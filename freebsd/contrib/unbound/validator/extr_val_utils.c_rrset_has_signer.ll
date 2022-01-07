; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_rrset_has_signer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_rrset_has_signer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64, i64, i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_packed_rrset_key*, i32*, i64)* @rrset_has_signer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrset_has_signer(%struct.ub_packed_rrset_key* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.packed_rrset_data*, align 8
  %9 = alloca i64, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %11 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %14, %struct.packed_rrset_data** %8, align 8
  %15 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %16 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %74, %3
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %21 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %24 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = icmp ult i64 %19, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %18
  %29 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %30 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %7, align 8
  %37 = add i64 20, %36
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %28
  %40 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %41 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 2
  %47 = add nsw i64 %46, 18
  %48 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %49 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 2
  %55 = sub nsw i32 %54, 18
  %56 = call i32 @dname_valid(i64 %47, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %39
  br label %74

59:                                               ; preds = %39
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %62 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %61, i32 0, i32 3
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 2
  %68 = add nsw i64 %67, 18
  %69 = call i64 @query_dname_compare(i32* %60, i64 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  store i32 1, i32* %4, align 4
  br label %78

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %28
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %9, align 8
  br label %18

77:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %71
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @dname_valid(i64, i32) #1

declare dso_local i64 @query_dname_compare(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
