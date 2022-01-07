; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_get_nextowner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_get_nextowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i32*, i64**, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsec3_get_nextowner(%struct.ub_packed_rrset_key* %0, i32 %1, i64** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.packed_rrset_data*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64** %2, i64*** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %13 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %16, %struct.packed_rrset_data** %11, align 8
  %17 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %18 = icmp ne %struct.packed_rrset_data* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %22 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = icmp slt i32 %20, %24
  br label %26

26:                                               ; preds = %19, %4
  %27 = phi i1 [ false, %4 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @log_assert(i32 %28)
  %30 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %31 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 7
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i64**, i64*** %8, align 8
  store i64* null, i64** %39, align 8
  %40 = load i64*, i64** %9, align 8
  store i64 0, i64* %40, align 8
  store i32 0, i32* %5, align 4
  br label %111

41:                                               ; preds = %26
  %42 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %43 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %42, i32 0, i32 1
  %44 = load i64**, i64*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64*, i64** %44, i64 %46
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 6
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  %51 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %52 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %10, align 8
  %60 = add i64 7, %59
  %61 = add i64 %60, 1
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %41
  %64 = load i64**, i64*** %8, align 8
  store i64* null, i64** %64, align 8
  %65 = load i64*, i64** %9, align 8
  store i64 0, i64* %65, align 8
  store i32 0, i32* %5, align 4
  br label %111

66:                                               ; preds = %41
  %67 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %68 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %67, i32 0, i32 1
  %69 = load i64**, i64*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64*, i64** %69, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = add i64 7, %74
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %9, align 8
  store i64 %77, i64* %78, align 8
  %79 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %80 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %10, align 8
  %88 = add i64 7, %87
  %89 = add i64 %88, 1
  %90 = load i64*, i64** %9, align 8
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %89, %91
  %93 = icmp ult i64 %86, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %66
  %95 = load i64**, i64*** %8, align 8
  store i64* null, i64** %95, align 8
  %96 = load i64*, i64** %9, align 8
  store i64 0, i64* %96, align 8
  store i32 0, i32* %5, align 4
  br label %111

97:                                               ; preds = %66
  %98 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %99 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %98, i32 0, i32 1
  %100 = load i64**, i64*** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64*, i64** %100, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 2
  %106 = getelementptr inbounds i64, i64* %105, i64 5
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = getelementptr inbounds i64, i64* %108, i64 1
  %110 = load i64**, i64*** %8, align 8
  store i64* %109, i64** %110, align 8
  store i32 1, i32* %5, align 4
  br label %111

111:                                              ; preds = %97, %94, %63, %38
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
