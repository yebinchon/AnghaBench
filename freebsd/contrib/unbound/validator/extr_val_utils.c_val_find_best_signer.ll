; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_find_best_signer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_find_best_signer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.query_info = type { i32* }
%struct.packed_rrset_data = type { i64, i64, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_packed_rrset_key*, %struct.query_info*, i32**, i64*, i32*)* @val_find_best_signer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @val_find_best_signer(%struct.ub_packed_rrset_key* %0, %struct.query_info* %1, i32** %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca %struct.query_info*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.packed_rrset_data*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %6, align 8
  store %struct.query_info* %1, %struct.query_info** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %16 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %19, %struct.packed_rrset_data** %11, align 8
  %20 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %21 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  br label %23

23:                                               ; preds = %83, %5
  %24 = load i64, i64* %13, align 8
  %25 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %26 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %29 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %27, %30
  %32 = icmp ult i64 %24, %31
  br i1 %32, label %33, label %86

33:                                               ; preds = %23
  %34 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %35 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %34, i32 0, i32 3
  %36 = load i32**, i32*** %35, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = getelementptr inbounds i32, i32* %40, i64 18
  store i32* %41, i32** %12, align 8
  %42 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %43 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 21
  br i1 %48, label %49, label %82

49:                                               ; preds = %33
  %50 = load %struct.query_info*, %struct.query_info** %7, align 8
  %51 = getelementptr inbounds %struct.query_info, %struct.query_info* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i64 @dname_subdomain_c(i32* %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %49
  %57 = load %struct.query_info*, %struct.query_info** %7, align 8
  %58 = getelementptr inbounds %struct.query_info, %struct.query_info* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.query_info*, %struct.query_info** %7, align 8
  %61 = getelementptr inbounds %struct.query_info, %struct.query_info* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @dname_count_labels(i32* %62)
  %64 = load i32*, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @dname_count_labels(i32* %65)
  %67 = call i32 @dname_lab_cmp(i32* %59, i32 %63, i32* %64, i32 %66, i32* %14)
  %68 = load i32, i32* %14, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %68, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %56
  %73 = load i32, i32* %14, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = load i32**, i32*** %8, align 8
  store i32* %75, i32** %76, align 8
  %77 = load i32**, i32*** %8, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = load i64*, i64** %9, align 8
  %80 = call i32 @dname_count_size_labels(i32* %78, i64* %79)
  br label %81

81:                                               ; preds = %72, %56
  br label %82

82:                                               ; preds = %81, %49, %33
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %13, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %13, align 8
  br label %23

86:                                               ; preds = %23
  ret void
}

declare dso_local i64 @dname_subdomain_c(i32*, i32*) #1

declare dso_local i32 @dname_lab_cmp(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
