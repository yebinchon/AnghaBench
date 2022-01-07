; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_cache_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_cache_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_cache = type { i32 }
%struct.rrset_ref = type { i64, %struct.ub_packed_rrset_key* }
%struct.ub_packed_rrset_key = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.alloc_cache = type { i32 }
%struct.lruhash_entry = type { i32, i64, i64 }
%struct.packed_rrset_data = type { i32 }

@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrset_cache_update(%struct.rrset_cache* %0, %struct.rrset_ref* %1, %struct.alloc_cache* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rrset_cache*, align 8
  %7 = alloca %struct.rrset_ref*, align 8
  %8 = alloca %struct.alloc_cache*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lruhash_entry*, align 8
  %11 = alloca %struct.ub_packed_rrset_key*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.rrset_cache* %0, %struct.rrset_cache** %6, align 8
  store %struct.rrset_ref* %1, %struct.rrset_ref** %7, align 8
  store %struct.alloc_cache* %2, %struct.alloc_cache** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %16 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %15, i32 0, i32 1
  %17 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  store %struct.ub_packed_rrset_key* %17, %struct.ub_packed_rrset_key** %11, align 8
  %18 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %19 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %23 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ntohs(i32 %25)
  store i64 %26, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %27 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %28 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %33 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %4
  %37 = phi i1 [ false, %4 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @log_assert(i32 %38)
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %41 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @log_assert(i32 %45)
  %47 = load %struct.rrset_cache*, %struct.rrset_cache** %6, align 8
  %48 = getelementptr inbounds %struct.rrset_cache, %struct.rrset_cache* %47, i32 0, i32 0
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %51 = call %struct.lruhash_entry* @slabhash_lookup(i32* %48, i32 %49, %struct.ub_packed_rrset_key* %50, i32 0)
  store %struct.lruhash_entry* %51, %struct.lruhash_entry** %10, align 8
  %52 = icmp ne %struct.lruhash_entry* %51, null
  br i1 %52, label %53, label %107

53:                                               ; preds = %36
  %54 = load %struct.lruhash_entry*, %struct.lruhash_entry** %10, align 8
  %55 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.ub_packed_rrset_key*
  %58 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %59 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %58, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %57, %struct.ub_packed_rrset_key** %59, align 8
  %60 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %61 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %60, i32 0, i32 1
  %62 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %61, align 8
  %63 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %66 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %68 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.packed_rrset_data*
  %72 = load %struct.lruhash_entry*, %struct.lruhash_entry** %10, align 8
  %73 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.packed_rrset_data*
  %76 = call i32 @rrsetdata_equal(%struct.packed_rrset_data* %71, %struct.packed_rrset_data* %75)
  store i32 %76, i32* %14, align 4
  %77 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %78 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.lruhash_entry*, %struct.lruhash_entry** %10, align 8
  %82 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @need_to_update_rrset(i64 %80, i64 %83, i32 %84, i32 %85, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %53
  %93 = load %struct.lruhash_entry*, %struct.lruhash_entry** %10, align 8
  %94 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %93, i32 0, i32 0
  %95 = call i32 @lock_rw_unlock(i32* %94)
  %96 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %97 = load %struct.alloc_cache*, %struct.alloc_cache** %8, align 8
  %98 = call i32 @ub_packed_rrset_parsedelete(%struct.ub_packed_rrset_key* %96, %struct.alloc_cache* %97)
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i32 2, i32* %5, align 4
  br label %150

102:                                              ; preds = %92
  store i32 1, i32* %5, align 4
  br label %150

103:                                              ; preds = %53
  %104 = load %struct.lruhash_entry*, %struct.lruhash_entry** %10, align 8
  %105 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %104, i32 0, i32 0
  %106 = call i32 @lock_rw_unlock(i32* %105)
  br label %107

107:                                              ; preds = %103, %36
  %108 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %109 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %108, i32 0, i32 1
  %110 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %109, align 8
  %111 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @log_assert(i32 %114)
  %116 = load %struct.rrset_cache*, %struct.rrset_cache** %6, align 8
  %117 = getelementptr inbounds %struct.rrset_cache, %struct.rrset_cache* %116, i32 0, i32 0
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %120 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %119, i32 0, i32 1
  %121 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %11, align 8
  %122 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.alloc_cache*, %struct.alloc_cache** %8, align 8
  %126 = call i32 @slabhash_insert(i32* %117, i32 %118, %struct.TYPE_4__* %120, i64 %124, %struct.alloc_cache* %125)
  %127 = load %struct.lruhash_entry*, %struct.lruhash_entry** %10, align 8
  %128 = icmp ne %struct.lruhash_entry* %127, null
  br i1 %128, label %129, label %149

129:                                              ; preds = %107
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %141, label %133

133:                                              ; preds = %129
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137, %133, %129
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = load %struct.rrset_ref*, %struct.rrset_ref** %7, align 8
  %146 = load %struct.alloc_cache*, %struct.alloc_cache** %8, align 8
  %147 = call i32 @rrset_update_id(%struct.rrset_ref* %145, %struct.alloc_cache* %146)
  br label %148

148:                                              ; preds = %144, %141, %137
  store i32 1, i32* %5, align 4
  br label %150

149:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %149, %148, %102, %101
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local %struct.lruhash_entry* @slabhash_lookup(i32*, i32, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @rrsetdata_equal(%struct.packed_rrset_data*, %struct.packed_rrset_data*) #1

declare dso_local i32 @need_to_update_rrset(i64, i64, i32, i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @ub_packed_rrset_parsedelete(%struct.ub_packed_rrset_key*, %struct.alloc_cache*) #1

declare dso_local i32 @slabhash_insert(i32*, i32, %struct.TYPE_4__*, i64, %struct.alloc_cache*) #1

declare dso_local i32 @rrset_update_id(%struct.rrset_ref*, %struct.alloc_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
