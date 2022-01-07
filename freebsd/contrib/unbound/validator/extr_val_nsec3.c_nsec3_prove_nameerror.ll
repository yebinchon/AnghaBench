; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_prove_nameerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_prove_nameerror.c"
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
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"start nsec3 nameerror proof, zone\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsec3_prove_nameerror(%struct.module_env* %0, %struct.val_env* %1, %struct.ub_packed_rrset_key** %2, i64 %3, %struct.query_info* %4, %struct.key_entry_key* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.module_env*, align 8
  %9 = alloca %struct.val_env*, align 8
  %10 = alloca %struct.ub_packed_rrset_key**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.query_info*, align 8
  %13 = alloca %struct.key_entry_key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nsec3_filter, align 4
  store %struct.module_env* %0, %struct.module_env** %8, align 8
  store %struct.val_env* %1, %struct.val_env** %9, align 8
  store %struct.ub_packed_rrset_key** %2, %struct.ub_packed_rrset_key*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.query_info* %4, %struct.query_info** %12, align 8
  store %struct.key_entry_key* %5, %struct.key_entry_key** %13, align 8
  %16 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %10, align 8
  %17 = icmp ne %struct.ub_packed_rrset_key** %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %6
  %19 = load i64, i64* %11, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load %struct.key_entry_key*, %struct.key_entry_key** %13, align 8
  %23 = icmp ne %struct.key_entry_key* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.key_entry_key*, %struct.key_entry_key** %13, align 8
  %26 = call i32 @key_entry_isgood(%struct.key_entry_key* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %21, %18, %6
  %29 = load i32, i32* @sec_status_bogus, align 4
  store i32 %29, i32* %7, align 4
  br label %56

30:                                               ; preds = %24
  %31 = call i32 @rbtree_init(i32* %14, i32* @nsec3_hash_cmp)
  %32 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.query_info*, %struct.query_info** %12, align 8
  %35 = call i32 @filter_init(%struct.nsec3_filter* %15, %struct.ub_packed_rrset_key** %32, i64 %33, %struct.query_info* %34)
  %36 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %15, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @sec_status_bogus, align 4
  store i32 %40, i32* %7, align 4
  br label %56

41:                                               ; preds = %30
  %42 = load %struct.val_env*, %struct.val_env** %9, align 8
  %43 = load %struct.key_entry_key*, %struct.key_entry_key** %13, align 8
  %44 = call i64 @nsec3_iteration_count_high(%struct.val_env* %42, %struct.nsec3_filter* %15, %struct.key_entry_key* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @sec_status_insecure, align 4
  store i32 %47, i32* %7, align 4
  br label %56

48:                                               ; preds = %41
  %49 = load i32, i32* @VERB_ALGO, align 4
  %50 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %15, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @log_nametypeclass(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51, i32 0, i32 0)
  %53 = load %struct.module_env*, %struct.module_env** %8, align 8
  %54 = load %struct.query_info*, %struct.query_info** %12, align 8
  %55 = call i32 @nsec3_do_prove_nameerror(%struct.module_env* %53, %struct.nsec3_filter* %15, i32* %14, %struct.query_info* %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %48, %46, %39, %28
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @key_entry_isgood(%struct.key_entry_key*) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

declare dso_local i32 @filter_init(%struct.nsec3_filter*, %struct.ub_packed_rrset_key**, i64, %struct.query_info*) #1

declare dso_local i64 @nsec3_iteration_count_high(%struct.val_env*, %struct.nsec3_filter*, %struct.key_entry_key*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @nsec3_do_prove_nameerror(%struct.module_env*, %struct.nsec3_filter*, i32*, %struct.query_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
