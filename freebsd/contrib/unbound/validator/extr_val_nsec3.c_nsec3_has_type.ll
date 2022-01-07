; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_has_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_has_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64*, i64**, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsec3_has_type(%struct.ub_packed_rrset_key* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.packed_rrset_data*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %13 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %16, %struct.packed_rrset_data** %11, align 8
  %17 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %18 = icmp ne %struct.packed_rrset_data* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %22 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = icmp slt i32 %20, %24
  br label %26

26:                                               ; preds = %19, %3
  %27 = phi i1 [ false, %3 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @log_assert(i32 %28)
  store i64 6, i64* %10, align 8
  %30 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %31 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %113

41:                                               ; preds = %26
  %42 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %43 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %42, i32 0, i32 1
  %44 = load i64**, i64*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64*, i64** %44, i64 %46
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = add i64 1, %51
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %10, align 8
  %55 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %56 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, 1
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %113

66:                                               ; preds = %41
  %67 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %68 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %67, i32 0, i32 1
  %69 = load i64**, i64*** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64*, i64** %69, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = add i64 1, %76
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %10, align 8
  %80 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %81 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %113

90:                                               ; preds = %66
  %91 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %92 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = sub i64 %97, %98
  store i64 %99, i64* %9, align 8
  %100 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %101 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %100, i32 0, i32 1
  %102 = load i64**, i64*** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64*, i64** %102, i64 %104
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64* %108, i64** %8, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @nsecbitmap_has_type_rdata(i64* %109, i64 %110, i32 %111)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %90, %89, %65, %40
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @nsecbitmap_has_type_rdata(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
