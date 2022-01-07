; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_find_nsec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_find_nsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { i32 }
%struct.val_neg_cache = type { i32 }
%struct.rrset_cache = type { i32 }
%struct.regional = type { i32 }
%struct.val_neg_zone = type { i32, i32, i64, %struct.val_neg_zone*, i32 }
%struct.val_neg_data = type { i32, i32, i32 }

@RBTREE_NULL = common dso_local global i32* null, align 8
@PACKED_RRSET_NSEC_AT_APEX = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_packed_rrset_key* (%struct.val_neg_cache*, i32*, i64, i32, %struct.rrset_cache*, i32, %struct.regional*)* @neg_find_nsec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_packed_rrset_key* @neg_find_nsec(%struct.val_neg_cache* %0, i32* %1, i64 %2, i32 %3, %struct.rrset_cache* %4, i32 %5, %struct.regional* %6) #0 {
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca %struct.val_neg_cache*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rrset_cache*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.regional*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.val_neg_zone*, align 8
  %19 = alloca %struct.val_neg_data*, align 8
  %20 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.rrset_cache* %4, %struct.rrset_cache** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.regional* %6, %struct.regional** %15, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @dname_count_labels(i32* %21)
  store i32 %22, i32* %16, align 4
  %23 = load %struct.val_neg_cache*, %struct.val_neg_cache** %9, align 8
  %24 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %23, i32 0, i32 0
  %25 = call i32 @lock_basic_lock(i32* %24)
  %26 = load %struct.val_neg_cache*, %struct.val_neg_cache** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call %struct.val_neg_zone* @neg_closest_zone_parent(%struct.val_neg_cache* %26, i32* %27, i64 %28, i32 %29, i32 %30)
  store %struct.val_neg_zone* %31, %struct.val_neg_zone** %18, align 8
  br label %32

32:                                               ; preds = %43, %7
  %33 = load %struct.val_neg_zone*, %struct.val_neg_zone** %18, align 8
  %34 = icmp ne %struct.val_neg_zone* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.val_neg_zone*, %struct.val_neg_zone** %18, align 8
  %37 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %32
  %42 = phi i1 [ false, %32 ], [ %40, %35 ]
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = load %struct.val_neg_zone*, %struct.val_neg_zone** %18, align 8
  %45 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %44, i32 0, i32 3
  %46 = load %struct.val_neg_zone*, %struct.val_neg_zone** %45, align 8
  store %struct.val_neg_zone* %46, %struct.val_neg_zone** %18, align 8
  br label %32

47:                                               ; preds = %41
  %48 = load %struct.val_neg_zone*, %struct.val_neg_zone** %18, align 8
  %49 = icmp ne %struct.val_neg_zone* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load %struct.val_neg_cache*, %struct.val_neg_cache** %9, align 8
  %52 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %51, i32 0, i32 0
  %53 = call i32 @lock_basic_unlock(i32* %52)
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %8, align 8
  br label %130

54:                                               ; preds = %47
  %55 = load %struct.val_neg_zone*, %struct.val_neg_zone** %18, align 8
  %56 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.val_neg_cache*, %struct.val_neg_cache** %9, align 8
  %61 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %60, i32 0, i32 0
  %62 = call i32 @lock_basic_unlock(i32* %61)
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %8, align 8
  br label %130

63:                                               ; preds = %54
  %64 = load %struct.val_neg_zone*, %struct.val_neg_zone** %18, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @neg_closest_data(%struct.val_neg_zone* %64, i32* %65, i64 %66, i32 %67, %struct.val_neg_data** %19)
  %69 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %70 = icmp ne %struct.val_neg_data* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %63
  %72 = load %struct.val_neg_cache*, %struct.val_neg_cache** %9, align 8
  %73 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %72, i32 0, i32 0
  %74 = call i32 @lock_basic_unlock(i32* %73)
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %8, align 8
  br label %130

75:                                               ; preds = %63
  %76 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %77 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %75
  %81 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %82 = bitcast %struct.val_neg_data* %81 to i32*
  %83 = call i64 @rbtree_previous(i32* %82)
  %84 = inttoptr i64 %83 to %struct.val_neg_data*
  store %struct.val_neg_data* %84, %struct.val_neg_data** %19, align 8
  %85 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %86 = bitcast %struct.val_neg_data* %85 to i32*
  %87 = load i32*, i32** @RBTREE_NULL, align 8
  %88 = icmp eq i32* %86, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %80
  %90 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %91 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89, %80
  %95 = load %struct.val_neg_cache*, %struct.val_neg_cache** %9, align 8
  %96 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %95, i32 0, i32 0
  %97 = call i32 @lock_basic_unlock(i32* %96)
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %8, align 8
  br label %130

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %75
  store i64 0, i64* %17, align 8
  %100 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %101 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.val_neg_zone*, %struct.val_neg_zone** %18, align 8
  %104 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @query_dname_compare(i32 %102, i32 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i64, i64* @PACKED_RRSET_NSEC_AT_APEX, align 8
  store i64 %109, i64* %17, align 8
  br label %110

110:                                              ; preds = %108, %99
  %111 = load %struct.rrset_cache*, %struct.rrset_cache** %13, align 8
  %112 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %113 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %116 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @LDNS_RR_TYPE_NSEC, align 4
  %119 = load %struct.val_neg_zone*, %struct.val_neg_zone** %18, align 8
  %120 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load %struct.regional*, %struct.regional** %15, align 8
  %124 = load i32, i32* %14, align 4
  %125 = call %struct.ub_packed_rrset_key* @grab_nsec(%struct.rrset_cache* %111, i32 %114, i32 %117, i32 %118, i32 %121, i64 %122, %struct.regional* %123, i32 0, i32 0, i32 %124)
  store %struct.ub_packed_rrset_key* %125, %struct.ub_packed_rrset_key** %20, align 8
  %126 = load %struct.val_neg_cache*, %struct.val_neg_cache** %9, align 8
  %127 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %126, i32 0, i32 0
  %128 = call i32 @lock_basic_unlock(i32* %127)
  %129 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %20, align 8
  store %struct.ub_packed_rrset_key* %129, %struct.ub_packed_rrset_key** %8, align 8
  br label %130

130:                                              ; preds = %110, %94, %71, %59, %50
  %131 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  ret %struct.ub_packed_rrset_key* %131
}

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local %struct.val_neg_zone* @neg_closest_zone_parent(%struct.val_neg_cache*, i32*, i64, i32, i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @neg_closest_data(%struct.val_neg_zone*, i32*, i64, i32, %struct.val_neg_data**) #1

declare dso_local i64 @rbtree_previous(i32*) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local %struct.ub_packed_rrset_key* @grab_nsec(%struct.rrset_cache*, i32, i32, i32, i32, i64, %struct.regional*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
