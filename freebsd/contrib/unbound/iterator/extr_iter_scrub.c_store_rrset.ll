; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_store_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_store_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32 }
%struct.module_env = type { i32, i32, i32* }
%struct.rrset_parse = type { i32 }
%struct.ub_packed_rrset_key = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.packed_rrset_data = type { i32 }
%struct.rrset_ref = type { i32, %struct.ub_packed_rrset_key* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.msg_parse*, %struct.module_env*, %struct.rrset_parse*)* @store_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_rrset(i32* %0, %struct.msg_parse* %1, %struct.module_env* %2, %struct.rrset_parse* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.msg_parse*, align 8
  %7 = alloca %struct.module_env*, align 8
  %8 = alloca %struct.rrset_parse*, align 8
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  %10 = alloca %struct.packed_rrset_data*, align 8
  %11 = alloca %struct.rrset_ref, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %6, align 8
  store %struct.module_env* %2, %struct.module_env** %7, align 8
  store %struct.rrset_parse* %3, %struct.rrset_parse** %8, align 8
  %13 = load %struct.module_env*, %struct.module_env** %7, align 8
  %14 = getelementptr inbounds %struct.module_env, %struct.module_env* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.module_env*, %struct.module_env** %7, align 8
  %18 = getelementptr inbounds %struct.module_env, %struct.module_env* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.ub_packed_rrset_key* @alloc_special_obtain(i32 %19)
  store %struct.ub_packed_rrset_key* %20, %struct.ub_packed_rrset_key** %9, align 8
  %21 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %22 = icmp ne %struct.ub_packed_rrset_key* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %63

24:                                               ; preds = %4
  %25 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %26 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.msg_parse*, %struct.msg_parse** %6, align 8
  %30 = load %struct.rrset_parse*, %struct.rrset_parse** %8, align 8
  %31 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %32 = call i32 @parse_copy_decompress_rrset(i32* %28, %struct.msg_parse* %29, %struct.rrset_parse* %30, i32* null, %struct.ub_packed_rrset_key* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %24
  %35 = load %struct.module_env*, %struct.module_env** %7, align 8
  %36 = getelementptr inbounds %struct.module_env, %struct.module_env* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %39 = call i32 @alloc_special_release(i32 %37, %struct.ub_packed_rrset_key* %38)
  br label %63

40:                                               ; preds = %24
  %41 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %42 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %45, %struct.packed_rrset_data** %10, align 8
  %46 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @packed_rrset_ttl_add(%struct.packed_rrset_data* %46, i32 %47)
  %49 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %50 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %11, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %49, %struct.ub_packed_rrset_key** %50, align 8
  %51 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %52 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %11, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = load %struct.module_env*, %struct.module_env** %7, align 8
  %56 = getelementptr inbounds %struct.module_env, %struct.module_env* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.module_env*, %struct.module_env** %7, align 8
  %59 = getelementptr inbounds %struct.module_env, %struct.module_env* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @rrset_cache_update(i32 %57, %struct.rrset_ref* %11, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %40, %34, %23
  ret void
}

declare dso_local %struct.ub_packed_rrset_key* @alloc_special_obtain(i32) #1

declare dso_local i32 @parse_copy_decompress_rrset(i32*, %struct.msg_parse*, %struct.rrset_parse*, i32*, %struct.ub_packed_rrset_key*) #1

declare dso_local i32 @alloc_special_release(i32, %struct.ub_packed_rrset_key*) #1

declare dso_local i32 @packed_rrset_ttl_add(%struct.packed_rrset_data*, i32) #1

declare dso_local i32 @rrset_cache_update(i32, %struct.rrset_ref*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
