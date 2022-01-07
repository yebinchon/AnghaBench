; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_find_DS.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_find_DS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.module_env = type { i32, i32*, i32, i32, i32 }
%struct.regional = type { i32 }
%struct.query_info = type { i64, i32*, i32, i32, i32* }

@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dns_msg* @val_find_DS(%struct.module_env* %0, i32* %1, i64 %2, i32 %3, %struct.regional* %4, i32* %5) #0 {
  %7 = alloca %struct.dns_msg*, align 8
  %8 = alloca %struct.module_env*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.regional*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dns_msg*, align 8
  %15 = alloca %struct.query_info, align 8
  %16 = alloca %struct.ub_packed_rrset_key*, align 8
  %17 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.module_env* %0, %struct.module_env** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.regional* %4, %struct.regional** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.module_env*, %struct.module_env** %8, align 8
  %19 = getelementptr inbounds %struct.module_env, %struct.module_env* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.module_env*, %struct.module_env** %8, align 8
  %26 = getelementptr inbounds %struct.module_env, %struct.module_env* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %20, i32* %21, i64 %22, i32 %23, i32 %24, i32 0, i32 %28, i32 0)
  store %struct.ub_packed_rrset_key* %29, %struct.ub_packed_rrset_key** %16, align 8
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %31 = icmp ne %struct.ub_packed_rrset_key* %30, null
  br i1 %31, label %32, label %78

32:                                               ; preds = %6
  %33 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %34 = load %struct.regional*, %struct.regional** %12, align 8
  %35 = load %struct.module_env*, %struct.module_env** %8, align 8
  %36 = getelementptr inbounds %struct.module_env, %struct.module_env* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key* %33, %struct.regional* %34, i32 %38)
  store %struct.ub_packed_rrset_key* %39, %struct.ub_packed_rrset_key** %17, align 8
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %41 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @lock_rw_unlock(i32* %42)
  %44 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %45 = icmp ne %struct.ub_packed_rrset_key* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %32
  store %struct.dns_msg* null, %struct.dns_msg** %7, align 8
  br label %108

47:                                               ; preds = %32
  %48 = load i32*, i32** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.regional*, %struct.regional** %12, align 8
  %53 = call %struct.dns_msg* @dns_msg_create(i32* %48, i64 %49, i32 %50, i32 %51, %struct.regional* %52, i32 1)
  store %struct.dns_msg* %53, %struct.dns_msg** %14, align 8
  %54 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %55 = icmp ne %struct.dns_msg* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  store %struct.dns_msg* null, %struct.dns_msg** %7, align 8
  br label %108

57:                                               ; preds = %47
  %58 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %59 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %60 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %62, align 8
  %64 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %63, i64 0
  store %struct.ub_packed_rrset_key* %58, %struct.ub_packed_rrset_key** %64, align 8
  %65 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %66 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %72 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  store %struct.dns_msg* %77, %struct.dns_msg** %7, align 8
  br label %108

78:                                               ; preds = %6
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds %struct.query_info, %struct.query_info* %15, i32 0, i32 4
  store i32* %79, i32** %80, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds %struct.query_info, %struct.query_info* %15, i32 0, i32 0
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %84 = getelementptr inbounds %struct.query_info, %struct.query_info* %15, i32 0, i32 3
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %11, align 4
  %86 = getelementptr inbounds %struct.query_info, %struct.query_info* %15, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.query_info, %struct.query_info* %15, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = load %struct.module_env*, %struct.module_env** %8, align 8
  %89 = getelementptr inbounds %struct.module_env, %struct.module_env* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.regional*, %struct.regional** %12, align 8
  %92 = load %struct.module_env*, %struct.module_env** %8, align 8
  %93 = getelementptr inbounds %struct.module_env, %struct.module_env* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.module_env*, %struct.module_env** %8, align 8
  %96 = getelementptr inbounds %struct.module_env, %struct.module_env* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.module_env*, %struct.module_env** %8, align 8
  %99 = getelementptr inbounds %struct.module_env, %struct.module_env* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = load %struct.module_env*, %struct.module_env** %8, align 8
  %104 = getelementptr inbounds %struct.module_env, %struct.module_env* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call %struct.dns_msg* @val_neg_getmsg(i32 %90, %struct.query_info* %15, %struct.regional* %91, i32 %94, i32 %97, i32 %101, i32 0, i32* %102, i32 %105)
  store %struct.dns_msg* %106, %struct.dns_msg** %14, align 8
  %107 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  store %struct.dns_msg* %107, %struct.dns_msg** %7, align 8
  br label %108

108:                                              ; preds = %78, %57, %56, %46
  %109 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  ret %struct.dns_msg* %109
}

declare dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32, i32*, i64, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key*, %struct.regional*, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local %struct.dns_msg* @dns_msg_create(i32*, i64, i32, i32, %struct.regional*, i32) #1

declare dso_local %struct.dns_msg* @val_neg_getmsg(i32, %struct.query_info*, %struct.regional*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
