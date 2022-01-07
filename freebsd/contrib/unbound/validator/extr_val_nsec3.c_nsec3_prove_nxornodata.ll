; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_prove_nxornodata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_prove_nxornodata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.query_info = type { i32 }
%struct.key_entry_key = type { i32 }
%struct.nsec3_filter = type { i32 }

@sec_status_bogus = common dso_local global i32 0, align 4
@nsec3_hash_cmp = common dso_local global i32 0, align 4
@sec_status_insecure = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsec3_prove_nxornodata(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key** %2, i64 %3, %struct.query_info* %4, %struct.key_entry_key* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.module_env*, align 8
  %10 = alloca %struct.val_env*, align 8
  %11 = alloca %struct.ub_packed_rrset_key**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.query_info*, align 8
  %14 = alloca %struct.key_entry_key*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nsec3_filter, align 4
  store %struct.module_env* %0, %struct.module_env** %9, align 8
  store %struct.val_env* %1, %struct.val_env** %10, align 8
  store %struct.ub_packed_rrset_key** %2, %struct.ub_packed_rrset_key*** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.query_info* %4, %struct.query_info** %13, align 8
  store %struct.key_entry_key* %5, %struct.key_entry_key** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %22 = icmp ne %struct.ub_packed_rrset_key** %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %7
  %24 = load i64, i64* %12, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  %28 = icmp ne %struct.key_entry_key* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  %31 = call i32 @key_entry_isgood(%struct.key_entry_key* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29, %26, %23, %7
  %34 = load i32, i32* @sec_status_bogus, align 4
  store i32 %34, i32* %8, align 4
  br label %87

35:                                               ; preds = %29
  %36 = call i32 @rbtree_init(i32* %18, i32* @nsec3_hash_cmp)
  %37 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.query_info*, %struct.query_info** %13, align 8
  %40 = call i32 @filter_init(%struct.nsec3_filter* %19, %struct.ub_packed_rrset_key** %37, i64 %38, %struct.query_info* %39)
  %41 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %19, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @sec_status_bogus, align 4
  store i32 %45, i32* %8, align 4
  br label %87

46:                                               ; preds = %35
  %47 = load %struct.val_env*, %struct.val_env** %10, align 8
  %48 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  %49 = call i64 @nsec3_iteration_count_high(%struct.val_env* %47, %struct.nsec3_filter* %19, %struct.key_entry_key* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @sec_status_insecure, align 4
  store i32 %52, i32* %8, align 4
  br label %87

53:                                               ; preds = %46
  %54 = load %struct.module_env*, %struct.module_env** %9, align 8
  %55 = load %struct.query_info*, %struct.query_info** %13, align 8
  %56 = call i32 @nsec3_do_prove_nameerror(%struct.module_env* %54, %struct.nsec3_filter* %19, i32* %18, %struct.query_info* %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* @sec_status_secure, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @sec_status_secure, align 4
  store i32 %61, i32* %8, align 4
  br label %87

62:                                               ; preds = %53
  %63 = load %struct.module_env*, %struct.module_env** %9, align 8
  %64 = load %struct.query_info*, %struct.query_info** %13, align 8
  %65 = call i32 @nsec3_do_prove_nodata(%struct.module_env* %63, %struct.nsec3_filter* %19, i32* %18, %struct.query_info* %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @sec_status_secure, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32*, i32** %15, align 8
  store i32 1, i32* %70, align 4
  br label %85

71:                                               ; preds = %62
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @sec_status_insecure, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32*, i32** %15, align 8
  store i32 1, i32* %76, align 4
  br label %84

77:                                               ; preds = %71
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @sec_status_insecure, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @sec_status_insecure, align 4
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %81, %77
  br label %84

84:                                               ; preds = %83, %75
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i32, i32* %16, align 4
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %85, %60, %51, %44, %33
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @key_entry_isgood(%struct.key_entry_key*) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

declare dso_local i32 @filter_init(%struct.nsec3_filter*, %struct.ub_packed_rrset_key**, i64, %struct.query_info*) #1

declare dso_local i64 @nsec3_iteration_count_high(%struct.val_env*, %struct.nsec3_filter*, %struct.key_entry_key*) #1

declare dso_local i32 @nsec3_do_prove_nameerror(%struct.module_env*, %struct.nsec3_filter*, i32*, %struct.query_info*) #1

declare dso_local i32 @nsec3_do_prove_nodata(%struct.module_env*, %struct.nsec3_filter*, i32*, %struct.query_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
