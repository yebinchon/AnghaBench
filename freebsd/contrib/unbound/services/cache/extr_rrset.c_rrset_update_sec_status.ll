; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_update_sec_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_update_sec_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_cache = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.packed_rrset_data = type { i64, i64, i64, i64, i64, i64* }
%struct.lruhash_entry = type { i32, i64 }

@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@sec_status_bogus = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrset_update_sec_status(%struct.rrset_cache* %0, %struct.ub_packed_rrset_key* %1, i64 %2) #0 {
  %4 = alloca %struct.rrset_cache*, align 8
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.packed_rrset_data*, align 8
  %8 = alloca %struct.lruhash_entry*, align 8
  %9 = alloca %struct.packed_rrset_data*, align 8
  %10 = alloca i64, align 8
  store %struct.rrset_cache* %0, %struct.rrset_cache** %4, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %12 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %15, %struct.packed_rrset_data** %7, align 8
  %16 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %17 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %16, i32 0, i32 0
  %18 = call i32 @rrset_key_hash(%struct.TYPE_4__* %17)
  %19 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %20 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.rrset_cache*, %struct.rrset_cache** %4, align 8
  %23 = getelementptr inbounds %struct.rrset_cache, %struct.rrset_cache* %22, i32 0, i32 0
  %24 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %25 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %29 = call %struct.lruhash_entry* @slabhash_lookup(i32* %23, i32 %27, %struct.ub_packed_rrset_key* %28, i32 1)
  store %struct.lruhash_entry* %29, %struct.lruhash_entry** %8, align 8
  %30 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %31 = icmp ne %struct.lruhash_entry* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  br label %144

33:                                               ; preds = %3
  %34 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %35 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %37, %struct.packed_rrset_data** %9, align 8
  %38 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %39 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %40 = call i32 @rrsetdata_equal(%struct.packed_rrset_data* %38, %struct.packed_rrset_data* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %44 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %43, i32 0, i32 0
  %45 = call i32 @lock_rw_unlock(i32* %44)
  br label %144

46:                                               ; preds = %33
  %47 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %48 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %51 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %140

54:                                               ; preds = %46
  %55 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %56 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %59 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %64 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %67 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %54
  %69 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %70 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %73 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %75 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @ntohs(i32 %77)
  %79 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %103, label %81

81:                                               ; preds = %68
  %82 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %83 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = add nsw i64 %84, %85
  %87 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %88 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %103, label %91

91:                                               ; preds = %81
  %92 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %93 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %99 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @sec_status_bogus, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %139

103:                                              ; preds = %97, %91, %81, %68
  %104 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %105 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = add nsw i64 %106, %107
  %109 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %110 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  store i64 0, i64* %10, align 8
  br label %111

111:                                              ; preds = %135, %103
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %114 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %117 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %115, %118
  %120 = icmp ult i64 %112, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %111
  %122 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %123 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %122, i32 0, i32 5
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = add nsw i64 %127, %128
  %130 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %131 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %130, i32 0, i32 5
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  store i64 %129, i64* %134, align 8
  br label %135

135:                                              ; preds = %121
  %136 = load i64, i64* %10, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %10, align 8
  br label %111

138:                                              ; preds = %111
  br label %139

139:                                              ; preds = %138, %97
  br label %140

140:                                              ; preds = %139, %46
  %141 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %142 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %141, i32 0, i32 0
  %143 = call i32 @lock_rw_unlock(i32* %142)
  br label %144

144:                                              ; preds = %140, %42, %32
  ret void
}

declare dso_local i32 @rrset_key_hash(%struct.TYPE_4__*) #1

declare dso_local %struct.lruhash_entry* @slabhash_lookup(i32*, i32, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @rrsetdata_equal(%struct.packed_rrset_data*, %struct.packed_rrset_data*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
