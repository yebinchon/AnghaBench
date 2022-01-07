; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_prove_wildcard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_prove_wildcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.query_info = type { i32, i32 }
%struct.key_entry_key = type { i32 }
%struct.nsec3_filter = type { i32 }
%struct.ce_response = type { i64, i32, i64, i32* }

@sec_status_bogus = common dso_local global i32 0, align 4
@nsec3_hash_cmp = common dso_local global i32 0, align 4
@sec_status_insecure = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"proveWildcard: did not find a covering NSEC3 that covered the next closer name.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"proveWildcard: NSEC3 optout\00", align 1
@sec_status_secure = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsec3_prove_wildcard(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key** %2, i64 %3, %struct.query_info* %4, %struct.key_entry_key* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.module_env*, align 8
  %10 = alloca %struct.val_env*, align 8
  %11 = alloca %struct.ub_packed_rrset_key**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.query_info*, align 8
  %14 = alloca %struct.key_entry_key*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nsec3_filter, align 4
  %18 = alloca %struct.ce_response, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %9, align 8
  store %struct.val_env* %1, %struct.val_env** %10, align 8
  store %struct.ub_packed_rrset_key** %2, %struct.ub_packed_rrset_key*** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.query_info* %4, %struct.query_info** %13, align 8
  store %struct.key_entry_key* %5, %struct.key_entry_key** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load i32*, i32** %15, align 8
  %23 = call i32 @dname_count_size_labels(i32* %22, i64* %21)
  %24 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %25 = icmp ne %struct.ub_packed_rrset_key** %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %7
  %27 = load i64, i64* %12, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  %31 = icmp ne %struct.key_entry_key* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  %34 = call i32 @key_entry_isgood(%struct.key_entry_key* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32, %29, %26, %7
  %37 = load i32, i32* @sec_status_bogus, align 4
  store i32 %37, i32* %8, align 4
  br label %99

38:                                               ; preds = %32
  %39 = call i32 @rbtree_init(i32* %16, i32* @nsec3_hash_cmp)
  %40 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.query_info*, %struct.query_info** %13, align 8
  %43 = call i32 @filter_init(%struct.nsec3_filter* %17, %struct.ub_packed_rrset_key** %40, i64 %41, %struct.query_info* %42)
  %44 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %17, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @sec_status_bogus, align 4
  store i32 %48, i32* %8, align 4
  br label %99

49:                                               ; preds = %38
  %50 = load %struct.val_env*, %struct.val_env** %10, align 8
  %51 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  %52 = call i64 @nsec3_iteration_count_high(%struct.val_env* %50, %struct.nsec3_filter* %17, %struct.key_entry_key* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @sec_status_insecure, align 4
  store i32 %55, i32* %8, align 4
  br label %99

56:                                               ; preds = %49
  %57 = call i32 @memset(%struct.ce_response* %18, i32 0, i32 32)
  %58 = load i32*, i32** %15, align 8
  %59 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %18, i32 0, i32 3
  store i32* %58, i32** %59, align 8
  %60 = load i64, i64* %21, align 8
  %61 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %18, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = load %struct.query_info*, %struct.query_info** %13, align 8
  %63 = getelementptr inbounds %struct.query_info, %struct.query_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.query_info*, %struct.query_info** %13, align 8
  %66 = getelementptr inbounds %struct.query_info, %struct.query_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %18, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @next_closer(i32 %64, i32 %67, i32* %69, i32** %19, i64* %20)
  %71 = load %struct.module_env*, %struct.module_env** %9, align 8
  %72 = load i32*, i32** %19, align 8
  %73 = load i64, i64* %20, align 8
  %74 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %18, i32 0, i32 2
  %75 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %18, i32 0, i32 1
  %76 = call i32 @find_covering_nsec3(%struct.module_env* %71, %struct.nsec3_filter* %17, i32* %16, i32* %72, i64 %73, i64* %74, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %56
  %79 = load i32, i32* @VERB_ALGO, align 4
  %80 = call i32 @verbose(i32 %79, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @sec_status_bogus, align 4
  store i32 %81, i32* %8, align 4
  br label %99

82:                                               ; preds = %56
  %83 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %18, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %18, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.ce_response, %struct.ce_response* %18, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @nsec3_has_optout(i64 %88, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @VERB_ALGO, align 4
  %95 = call i32 @verbose(i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @sec_status_insecure, align 4
  store i32 %96, i32* %8, align 4
  br label %99

97:                                               ; preds = %86, %82
  %98 = load i32, i32* @sec_status_secure, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %97, %93, %78, %54, %47, %36
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #1

declare dso_local i32 @key_entry_isgood(%struct.key_entry_key*) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

declare dso_local i32 @filter_init(%struct.nsec3_filter*, %struct.ub_packed_rrset_key**, i64, %struct.query_info*) #1

declare dso_local i64 @nsec3_iteration_count_high(%struct.val_env*, %struct.nsec3_filter*, %struct.key_entry_key*) #1

declare dso_local i32 @memset(%struct.ce_response*, i32, i32) #1

declare dso_local i32 @next_closer(i32, i32, i32*, i32**, i64*) #1

declare dso_local i32 @find_covering_nsec3(%struct.module_env*, %struct.nsec3_filter*, i32*, i32*, i64, i64*, i32*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i64 @nsec3_has_optout(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
