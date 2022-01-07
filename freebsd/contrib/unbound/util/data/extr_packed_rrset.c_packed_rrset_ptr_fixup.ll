; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_packed_rrset_ptr_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_packed_rrset_ptr_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_rrset_data = type { i64, i64, i64*, i32**, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packed_rrset_ptr_fixup(%struct.packed_rrset_data* %0) #0 {
  %2 = alloca %struct.packed_rrset_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.packed_rrset_data* %0, %struct.packed_rrset_data** %2, align 8
  %6 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %7 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %10 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %8, %11
  store i64 %12, i64* %4, align 8
  %13 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %14 = bitcast %struct.packed_rrset_data* %13 to i32*
  %15 = getelementptr inbounds i32, i32* %14, i64 40
  %16 = bitcast i32* %15 to i64*
  %17 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %18 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %17, i32 0, i32 2
  store i64* %16, i64** %18, align 8
  %19 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %20 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = bitcast i64* %23 to i32**
  %25 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %26 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %25, i32 0, i32 3
  store i32** %24, i32*** %26, align 8
  %27 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %28 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %27, i32 0, i32 3
  %29 = load i32**, i32*** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = bitcast i32** %31 to i32*
  %33 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %34 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %33, i32 0, i32 4
  store i32* %32, i32** %34, align 8
  %35 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %36 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %5, align 8
  store i64 0, i64* %3, align 8
  br label %40

40:                                               ; preds = %59, %1
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %47 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %46, i32 0, i32 3
  %48 = load i32**, i32*** %47, align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  store i32* %45, i32** %50, align 8
  %51 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %2, align 8
  %52 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 %56
  store i32* %58, i32** %5, align 8
  br label %59

59:                                               ; preds = %44
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %3, align 8
  br label %40

62:                                               ; preds = %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
