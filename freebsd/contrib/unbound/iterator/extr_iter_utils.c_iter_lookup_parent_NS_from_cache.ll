; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_lookup_parent_NS_from_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_lookup_parent_NS_from_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32*, i32 }
%struct.delegpt = type { i32, i32, i32 }
%struct.regional = type { i32 }
%struct.query_info = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@PACKED_RRSET_PARENT_SIDE = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"found parent-side NS in cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iter_lookup_parent_NS_from_cache(%struct.module_env* %0, %struct.delegpt* %1, %struct.regional* %2, %struct.query_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.delegpt*, align 8
  %8 = alloca %struct.regional*, align 8
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store %struct.delegpt* %1, %struct.delegpt** %7, align 8
  store %struct.regional* %2, %struct.regional** %8, align 8
  store %struct.query_info* %3, %struct.query_info** %9, align 8
  %11 = load %struct.module_env*, %struct.module_env** %6, align 8
  %12 = getelementptr inbounds %struct.module_env, %struct.module_env* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %15 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %18 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %21 = load %struct.query_info*, %struct.query_info** %9, align 8
  %22 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PACKED_RRSET_PARENT_SIDE, align 4
  %25 = load %struct.module_env*, %struct.module_env** %6, align 8
  %26 = getelementptr inbounds %struct.module_env, %struct.module_env* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %13, i32 %16, i32 %19, i32 %20, i32 %23, i32 %24, i32 %28, i32 0)
  store %struct.ub_packed_rrset_key* %29, %struct.ub_packed_rrset_key** %10, align 8
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %31 = icmp ne %struct.ub_packed_rrset_key* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %4
  %33 = load i32, i32* @VERB_ALGO, align 4
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %35 = call i32 @log_rrset_key(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.ub_packed_rrset_key* %34)
  %36 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %37 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %39 = load %struct.regional*, %struct.regional** %8, align 8
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %41 = call i32 @delegpt_rrset_add_ns(%struct.delegpt* %38, %struct.regional* %39, %struct.ub_packed_rrset_key* %40, i32 1)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %32
  %44 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %45 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @lock_rw_unlock(i32* %46)
  store i32 0, i32* %5, align 4
  br label %54

48:                                               ; preds = %32
  %49 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %50 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @lock_rw_unlock(i32* %51)
  br label %53

53:                                               ; preds = %48, %4
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_rrset_key(i32, i8*, %struct.ub_packed_rrset_key*) #1

declare dso_local i32 @delegpt_rrset_add_ns(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
