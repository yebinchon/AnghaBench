; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_nsec3_getnc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_nsec3_getnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { i32 }
%struct.val_neg_zone = type { i32, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.rrset_cache = type { i32 }
%struct.regional = type { i32 }
%struct.val_neg_data = type { i32, i32, %struct.val_neg_data*, i32 }

@LDNS_RR_TYPE_NSEC3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_packed_rrset_key* (%struct.val_neg_zone*, i32*, i64, %struct.rrset_cache*, %struct.regional*, i32, i32*, i64)* @neg_nsec3_getnc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_packed_rrset_key* @neg_nsec3_getnc(%struct.val_neg_zone* %0, i32* %1, i64 %2, %struct.rrset_cache* %3, %struct.regional* %4, i32 %5, i32* %6, i64 %7) #0 {
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  %10 = alloca %struct.val_neg_zone*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rrset_cache*, align 8
  %14 = alloca %struct.regional*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ub_packed_rrset_key*, align 8
  %19 = alloca %struct.val_neg_data*, align 8
  %20 = alloca i64, align 8
  store %struct.val_neg_zone* %0, %struct.val_neg_zone** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.rrset_cache* %3, %struct.rrset_cache** %13, align 8
  store %struct.regional* %4, %struct.regional** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %24 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %27 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = load i64, i64* %17, align 8
  %31 = call i64 @nsec3_hash_to_b32(i32* %21, i64 %22, i32 %25, i32 %28, i32* %29, i64 %30)
  store i64 %31, i64* %20, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %8
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %9, align 8
  br label %102

34:                                               ; preds = %8
  %35 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = load i64, i64* %20, align 8
  %38 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %39 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = call i32 @neg_closest_data(%struct.val_neg_zone* %35, i32* %36, i64 %37, i64 %41, %struct.val_neg_data** %19)
  %43 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %44 = icmp ne %struct.val_neg_data* %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %34
  %46 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %47 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %53 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %52, i32 0, i32 1
  %54 = call i64 @rbtree_last(%struct.TYPE_2__* %53)
  %55 = inttoptr i64 %54 to %struct.val_neg_data*
  store %struct.val_neg_data* %55, %struct.val_neg_data** %19, align 8
  br label %56

56:                                               ; preds = %51, %45, %34
  br label %57

57:                                               ; preds = %68, %56
  %58 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %59 = icmp ne %struct.val_neg_data* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %62 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %60, %57
  %67 = phi i1 [ false, %57 ], [ %65, %60 ]
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %70 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %69, i32 0, i32 2
  %71 = load %struct.val_neg_data*, %struct.val_neg_data** %70, align 8
  store %struct.val_neg_data* %71, %struct.val_neg_data** %19, align 8
  br label %57

72:                                               ; preds = %66
  %73 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %74 = icmp ne %struct.val_neg_data* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %9, align 8
  br label %102

76:                                               ; preds = %72
  %77 = load %struct.rrset_cache*, %struct.rrset_cache** %13, align 8
  %78 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %79 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.val_neg_data*, %struct.val_neg_data** %19, align 8
  %82 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @LDNS_RR_TYPE_NSEC3, align 4
  %85 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %86 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.regional*, %struct.regional** %14, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call %struct.ub_packed_rrset_key* @grab_nsec(%struct.rrset_cache* %77, i32 %80, i32 %83, i32 %84, i32 %87, i32 0, %struct.regional* %88, i32 0, i32 0, i32 %89)
  store %struct.ub_packed_rrset_key* %90, %struct.ub_packed_rrset_key** %18, align 8
  %91 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %92 = icmp ne %struct.ub_packed_rrset_key* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %76
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %9, align 8
  br label %102

94:                                               ; preds = %76
  %95 = load %struct.val_neg_zone*, %struct.val_neg_zone** %10, align 8
  %96 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %97 = call i32 @neg_params_ok(%struct.val_neg_zone* %95, %struct.ub_packed_rrset_key* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %9, align 8
  br label %102

100:                                              ; preds = %94
  %101 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  store %struct.ub_packed_rrset_key* %101, %struct.ub_packed_rrset_key** %9, align 8
  br label %102

102:                                              ; preds = %100, %99, %93, %75, %33
  %103 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  ret %struct.ub_packed_rrset_key* %103
}

declare dso_local i64 @nsec3_hash_to_b32(i32*, i64, i32, i32, i32*, i64) #1

declare dso_local i32 @neg_closest_data(%struct.val_neg_zone*, i32*, i64, i64, %struct.val_neg_data**) #1

declare dso_local i64 @rbtree_last(%struct.TYPE_2__*) #1

declare dso_local %struct.ub_packed_rrset_key* @grab_nsec(%struct.rrset_cache*, i32, i32, i32, i32, i32, %struct.regional*, i32, i32, i32) #1

declare dso_local i32 @neg_params_ok(%struct.val_neg_zone*, %struct.ub_packed_rrset_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
