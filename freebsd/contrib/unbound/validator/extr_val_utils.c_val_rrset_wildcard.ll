; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_rrset_wildcard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_rrset_wildcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64* }
%struct.TYPE_3__ = type { i64 }
%struct.packed_rrset_data = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_rrset_wildcard(%struct.ub_packed_rrset_key* %0, i64** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.packed_rrset_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %15 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %18, %struct.packed_rrset_data** %8, align 8
  %19 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %20 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %87

24:                                               ; preds = %3
  %25 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %26 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %27 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 0
  %30 = call i64 @rrsig_get_labcount(%struct.packed_rrset_data* %25, i64 %29)
  store i64 %30, i64* %9, align 8
  store i64 1, i64* %12, align 8
  br label %31

31:                                               ; preds = %49, %24
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %34 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %40 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %41 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %42, %43
  %45 = call i64 @rrsig_get_labcount(%struct.packed_rrset_data* %39, i64 %44)
  %46 = icmp ne i64 %38, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %87

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %12, align 8
  br label %31

52:                                               ; preds = %31
  %53 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %54 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  store i64* %56, i64** %11, align 8
  %57 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %58 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %13, align 8
  %61 = load i64*, i64** %11, align 8
  %62 = call i64 @dname_is_wild(i64* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load i64*, i64** %11, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  store i64* %66, i64** %11, align 8
  %67 = load i64, i64* %13, align 8
  %68 = sub i64 %67, 2
  store i64 %68, i64* %13, align 8
  br label %69

69:                                               ; preds = %64, %52
  %70 = load i64*, i64** %11, align 8
  %71 = call i32 @dname_count_labels(i64* %70)
  %72 = sub nsw i32 %71, 1
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  %75 = sub nsw i32 %72, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %69
  %79 = load i64*, i64** %11, align 8
  %80 = load i64**, i64*** %6, align 8
  store i64* %79, i64** %80, align 8
  %81 = load i64**, i64*** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @dname_remove_labels(i64** %81, i64* %13, i32 %82)
  %84 = load i64, i64* %13, align 8
  %85 = load i64*, i64** %7, align 8
  store i64 %84, i64* %85, align 8
  store i32 1, i32* %4, align 4
  br label %87

86:                                               ; preds = %69
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %78, %47, %23
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @rrsig_get_labcount(%struct.packed_rrset_data*, i64) #1

declare dso_local i64 @dname_is_wild(i64*) #1

declare dso_local i32 @dname_count_labels(i64*) #1

declare dso_local i32 @dname_remove_labels(i64**, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
