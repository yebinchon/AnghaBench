; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_lookup_parent_glue_from_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_lookup_parent_glue_from_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32*, i32 }
%struct.delegpt = type { %struct.delegpt_ns* }
%struct.delegpt_ns = type { i32, i32, i32, i32, %struct.delegpt_ns* }
%struct.regional = type { i32 }
%struct.query_info = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@PACKED_RRSET_PARENT_SIDE = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"found parent-side\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"malloc failure in lookup_parent_glue\00", align 1
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iter_lookup_parent_glue_from_cache(%struct.module_env* %0, %struct.delegpt* %1, %struct.regional* %2, %struct.query_info* %3) #0 {
  %5 = alloca %struct.module_env*, align 8
  %6 = alloca %struct.delegpt*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  %10 = alloca %struct.delegpt_ns*, align 8
  %11 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %5, align 8
  store %struct.delegpt* %1, %struct.delegpt** %6, align 8
  store %struct.regional* %2, %struct.regional** %7, align 8
  store %struct.query_info* %3, %struct.query_info** %8, align 8
  %12 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %13 = call i64 @delegpt_count_targets(%struct.delegpt* %12)
  store i64 %13, i64* %11, align 8
  %14 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %15 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %14, i32 0, i32 0
  %16 = load %struct.delegpt_ns*, %struct.delegpt_ns** %15, align 8
  store %struct.delegpt_ns* %16, %struct.delegpt_ns** %10, align 8
  br label %17

17:                                               ; preds = %101, %4
  %18 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %19 = icmp ne %struct.delegpt_ns* %18, null
  br i1 %19, label %20, label %105

20:                                               ; preds = %17
  %21 = load %struct.module_env*, %struct.module_env** %5, align 8
  %22 = getelementptr inbounds %struct.module_env, %struct.module_env* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %25 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %28 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %31 = load %struct.query_info*, %struct.query_info** %8, align 8
  %32 = getelementptr inbounds %struct.query_info, %struct.query_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PACKED_RRSET_PARENT_SIDE, align 4
  %35 = load %struct.module_env*, %struct.module_env** %5, align 8
  %36 = getelementptr inbounds %struct.module_env, %struct.module_env* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %23, i32 %26, i32 %29, i32 %30, i32 %33, i32 %34, i32 %38, i32 0)
  store %struct.ub_packed_rrset_key* %39, %struct.ub_packed_rrset_key** %9, align 8
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %41 = icmp ne %struct.ub_packed_rrset_key* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %20
  %43 = load i32, i32* @VERB_ALGO, align 4
  %44 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %45 = call i32 @log_rrset_key(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.ub_packed_rrset_key* %44)
  %46 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %47 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %49 = load %struct.regional*, %struct.regional** %7, align 8
  %50 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %51 = call i32 @delegpt_add_rrset_A(%struct.delegpt* %48, %struct.regional* %49, %struct.ub_packed_rrset_key* %50, i32 1)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %42
  %54 = call i32 @log_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %42
  %56 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %57 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @lock_rw_unlock(i32* %58)
  br label %60

60:                                               ; preds = %55, %20
  %61 = load %struct.module_env*, %struct.module_env** %5, align 8
  %62 = getelementptr inbounds %struct.module_env, %struct.module_env* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %65 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %68 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %71 = load %struct.query_info*, %struct.query_info** %8, align 8
  %72 = getelementptr inbounds %struct.query_info, %struct.query_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PACKED_RRSET_PARENT_SIDE, align 4
  %75 = load %struct.module_env*, %struct.module_env** %5, align 8
  %76 = getelementptr inbounds %struct.module_env, %struct.module_env* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %63, i32 %66, i32 %69, i32 %70, i32 %73, i32 %74, i32 %78, i32 0)
  store %struct.ub_packed_rrset_key* %79, %struct.ub_packed_rrset_key** %9, align 8
  %80 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %81 = icmp ne %struct.ub_packed_rrset_key* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %60
  %83 = load i32, i32* @VERB_ALGO, align 4
  %84 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %85 = call i32 @log_rrset_key(i32 %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.ub_packed_rrset_key* %84)
  %86 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %87 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %89 = load %struct.regional*, %struct.regional** %7, align 8
  %90 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %91 = call i32 @delegpt_add_rrset_AAAA(%struct.delegpt* %88, %struct.regional* %89, %struct.ub_packed_rrset_key* %90, i32 1)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %82
  %94 = call i32 @log_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %82
  %96 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %97 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @lock_rw_unlock(i32* %98)
  br label %100

100:                                              ; preds = %95, %60
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %103 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %102, i32 0, i32 4
  %104 = load %struct.delegpt_ns*, %struct.delegpt_ns** %103, align 8
  store %struct.delegpt_ns* %104, %struct.delegpt_ns** %10, align 8
  br label %17

105:                                              ; preds = %17
  %106 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %107 = call i64 @delegpt_count_targets(%struct.delegpt* %106)
  %108 = load i64, i64* %11, align 8
  %109 = icmp ne i64 %107, %108
  %110 = zext i1 %109 to i32
  ret i32 %110
}

declare dso_local i64 @delegpt_count_targets(%struct.delegpt*) #1

declare dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_rrset_key(i32, i8*, %struct.ub_packed_rrset_key*) #1

declare dso_local i32 @delegpt_add_rrset_A(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @delegpt_add_rrset_AAAA(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
