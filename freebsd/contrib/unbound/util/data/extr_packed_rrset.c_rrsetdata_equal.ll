; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_rrsetdata_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_rrsetdata_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_rrset_data = type { i64, i64, i64*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrsetdata_equal(%struct.packed_rrset_data* %0, %struct.packed_rrset_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.packed_rrset_data*, align 8
  %5 = alloca %struct.packed_rrset_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.packed_rrset_data* %0, %struct.packed_rrset_data** %4, align 8
  store %struct.packed_rrset_data* %1, %struct.packed_rrset_data** %5, align 8
  %8 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %9 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %5, align 8
  %12 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %17 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %5, align 8
  %20 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %78

24:                                               ; preds = %15
  %25 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %26 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %29 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %27, %30
  store i64 %31, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %74, %24
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %32
  %37 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %38 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %5, align 8
  %44 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %78

51:                                               ; preds = %36
  %52 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %53 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %5, align 8
  %59 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %65 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @memcmp(i32 %57, i32 %63, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %78

73:                                               ; preds = %51
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %6, align 8
  br label %32

77:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %72, %50, %23
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
