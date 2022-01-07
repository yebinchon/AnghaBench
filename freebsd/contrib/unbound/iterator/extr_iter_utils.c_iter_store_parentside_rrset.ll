; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_store_parentside_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_store_parentside_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32*, i32, i32 }
%struct.ub_packed_rrset_key = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rrset_ref = type { i32, %struct.ub_packed_rrset_key* }

@.str = private unnamed_addr constant [41 x i8] c"malloc failure in store_parentside_rrset\00", align 1
@PACKED_RRSET_PARENT_SIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iter_store_parentside_rrset(%struct.module_env* %0, %struct.ub_packed_rrset_key* %1) #0 {
  %3 = alloca %struct.module_env*, align 8
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca %struct.rrset_ref, align 8
  store %struct.module_env* %0, %struct.module_env** %3, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %4, align 8
  %6 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %7 = load %struct.module_env*, %struct.module_env** %3, align 8
  %8 = getelementptr inbounds %struct.module_env, %struct.module_env* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.module_env*, %struct.module_env** %3, align 8
  %11 = getelementptr inbounds %struct.module_env, %struct.module_env* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ub_packed_rrset_key* @packed_rrset_copy_alloc(%struct.ub_packed_rrset_key* %6, i32 %9, i32 %13)
  store %struct.ub_packed_rrset_key* %14, %struct.ub_packed_rrset_key** %4, align 8
  %15 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %16 = icmp ne %struct.ub_packed_rrset_key* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %49

19:                                               ; preds = %2
  %20 = load i32, i32* @PACKED_RRSET_PARENT_SIDE, align 4
  %21 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %22 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %27 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %26, i32 0, i32 1
  %28 = call i32 @rrset_key_hash(%struct.TYPE_4__* %27)
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %30 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %33 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %5, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %32, %struct.ub_packed_rrset_key** %33, align 8
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %35 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.module_env*, %struct.module_env** %3, align 8
  %39 = getelementptr inbounds %struct.module_env, %struct.module_env* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.module_env*, %struct.module_env** %3, align 8
  %42 = getelementptr inbounds %struct.module_env, %struct.module_env* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.module_env*, %struct.module_env** %3, align 8
  %45 = getelementptr inbounds %struct.module_env, %struct.module_env* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rrset_cache_update(i32 %40, %struct.rrset_ref* %5, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %19, %17
  ret void
}

declare dso_local %struct.ub_packed_rrset_key* @packed_rrset_copy_alloc(%struct.ub_packed_rrset_key*, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @rrset_key_hash(%struct.TYPE_4__*) #1

declare dso_local i32 @rrset_cache_update(i32, %struct.rrset_ref*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
