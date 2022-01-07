; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_nsec_has_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_nsec_has_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64, i32*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsec_has_type(%struct.ub_packed_rrset_key* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.packed_rrset_data*, align 8
  %7 = alloca i64, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %9 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %12, %struct.packed_rrset_data** %6, align 8
  %13 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %14 = icmp ne %struct.packed_rrset_data* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %17 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %22 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %15, %2
  store i32 0, i32* %3, align 4
  br label %66

28:                                               ; preds = %20
  %29 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %30 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 2
  %35 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %36 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 2
  %41 = call i64 @dname_valid(i64 %34, i32 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %66

45:                                               ; preds = %28
  %46 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %47 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 2
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %51, %52
  %54 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %55 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %7, align 8
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @nsecbitmap_has_type_rdata(i64 %53, i32 %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %45, %44, %27
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @dname_valid(i64, i32) #1

declare dso_local i32 @nsecbitmap_has_type_rdata(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
