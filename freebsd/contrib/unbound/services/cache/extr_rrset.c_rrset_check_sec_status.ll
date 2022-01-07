; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_check_sec_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_check_sec_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_cache = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.packed_rrset_data = type { i64, i64, i64, i64, i64*, i64 }
%struct.lruhash_entry = type { i32, i64 }

@sec_status_bogus = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrset_check_sec_status(%struct.rrset_cache* %0, %struct.ub_packed_rrset_key* %1, i64 %2) #0 {
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
  %12 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %15, %struct.packed_rrset_data** %7, align 8
  %16 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %17 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %16, i32 0, i32 1
  %18 = call i32 @rrset_key_hash(i32* %17)
  %19 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %20 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.rrset_cache*, %struct.rrset_cache** %4, align 8
  %23 = getelementptr inbounds %struct.rrset_cache, %struct.rrset_cache* %22, i32 0, i32 0
  %24 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %25 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %29 = call %struct.lruhash_entry* @slabhash_lookup(i32* %23, i32 %27, %struct.ub_packed_rrset_key* %28, i32 0)
  store %struct.lruhash_entry* %29, %struct.lruhash_entry** %8, align 8
  %30 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %31 = icmp ne %struct.lruhash_entry* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  br label %142

33:                                               ; preds = %3
  %34 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %35 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %37, %struct.packed_rrset_data** %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %40 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %33
  %44 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %45 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %46 = call i32 @rrsetdata_equal(%struct.packed_rrset_data* %44, %struct.packed_rrset_data* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43, %33
  %49 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %50 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %49, i32 0, i32 0
  %51 = call i32 @lock_rw_unlock(i32* %50)
  br label %142

52:                                               ; preds = %43
  %53 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %54 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %57 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %138

60:                                               ; preds = %52
  %61 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %62 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %65 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %67 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @sec_status_bogus, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %123

71:                                               ; preds = %60
  %72 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %73 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = sub nsw i64 %74, %75
  %77 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %78 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  store i64 0, i64* %10, align 8
  br label %79

79:                                               ; preds = %119, %71
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %82 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %85 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %83, %86
  %88 = icmp ult i64 %80, %87
  br i1 %88, label %89, label %122

89:                                               ; preds = %79
  %90 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %91 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %90, i32 0, i32 4
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %89
  %99 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %100 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %99, i32 0, i32 4
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store i64 0, i64* %103, align 8
  br label %118

104:                                              ; preds = %89
  %105 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %106 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %105, i32 0, i32 4
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = sub nsw i64 %110, %111
  %113 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %114 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %113, i32 0, i32 4
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  store i64 %112, i64* %117, align 8
  br label %118

118:                                              ; preds = %104, %98
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %10, align 8
  br label %79

122:                                              ; preds = %79
  br label %123

123:                                              ; preds = %122, %60
  %124 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %125 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %128 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %126, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %133 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %136 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %135, i32 0, i32 5
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %131, %123
  br label %138

138:                                              ; preds = %137, %52
  %139 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %140 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %139, i32 0, i32 0
  %141 = call i32 @lock_rw_unlock(i32* %140)
  br label %142

142:                                              ; preds = %138, %48, %32
  ret void
}

declare dso_local i32 @rrset_key_hash(i32*) #1

declare dso_local %struct.lruhash_entry* @slabhash_lookup(i32*, i32, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @rrsetdata_equal(%struct.packed_rrset_data*, %struct.packed_rrset_data*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
