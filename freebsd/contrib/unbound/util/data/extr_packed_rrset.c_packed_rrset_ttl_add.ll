; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_packed_rrset_ttl_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_packed_rrset_ttl_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_rrset_data = type { i64, i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packed_rrset_ttl_add(%struct.packed_rrset_data* %0, i64 %1) #0 {
  %3 = alloca %struct.packed_rrset_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.packed_rrset_data* %0, %struct.packed_rrset_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %3, align 8
  %8 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %3, align 8
  %11 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %9, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %3, align 8
  %16 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %14
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 8
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %36, %2
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %3, align 8
  %28 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %26
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  br label %36

36:                                               ; preds = %25
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %21

39:                                               ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
