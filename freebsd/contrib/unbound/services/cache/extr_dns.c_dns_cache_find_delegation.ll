; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_cache_find_delegation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_cache_find_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }
%struct.module_env = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.packed_rrset_data = type { i32 }

@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"find_delegation: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"find_delegation: addns out of memory\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"find_delegation: addrs out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.delegpt* @dns_cache_find_delegation(%struct.module_env* %0, i32* %1, i64 %2, i32 %3, i32 %4, %struct.regional* %5, %struct.dns_msg** %6, i32 %7) #0 {
  %9 = alloca %struct.delegpt*, align 8
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.regional*, align 8
  %16 = alloca %struct.dns_msg**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ub_packed_rrset_key*, align 8
  %19 = alloca %struct.packed_rrset_data*, align 8
  %20 = alloca %struct.delegpt*, align 8
  store %struct.module_env* %0, %struct.module_env** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.regional* %5, %struct.regional** %15, align 8
  store %struct.dns_msg** %6, %struct.dns_msg*** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load %struct.module_env*, %struct.module_env** %10, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %27 = call %struct.ub_packed_rrset_key* @find_closest_of_type(%struct.module_env* %21, i32* %22, i64 %23, i32 %24, i32 %25, i32 %26, i32 0)
  store %struct.ub_packed_rrset_key* %27, %struct.ub_packed_rrset_key** %18, align 8
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %29 = icmp ne %struct.ub_packed_rrset_key* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %8
  store %struct.delegpt* null, %struct.delegpt** %9, align 8
  br label %126

31:                                               ; preds = %8
  %32 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %33 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %36, %struct.packed_rrset_data** %19, align 8
  %37 = load %struct.regional*, %struct.regional** %15, align 8
  %38 = call %struct.delegpt* @delegpt_create(%struct.regional* %37)
  store %struct.delegpt* %38, %struct.delegpt** %20, align 8
  %39 = load %struct.delegpt*, %struct.delegpt** %20, align 8
  %40 = icmp ne %struct.delegpt* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load %struct.delegpt*, %struct.delegpt** %20, align 8
  %43 = load %struct.regional*, %struct.regional** %15, align 8
  %44 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %45 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @delegpt_set_name(%struct.delegpt* %42, %struct.regional* %43, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %41, %31
  %51 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %52 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @lock_rw_unlock(i32* %53)
  %55 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.delegpt* null, %struct.delegpt** %9, align 8
  br label %126

56:                                               ; preds = %41
  %57 = load %struct.dns_msg**, %struct.dns_msg*** %16, align 8
  %58 = icmp ne %struct.dns_msg** %57, null
  br i1 %58, label %59, label %90

59:                                               ; preds = %56
  %60 = load i32*, i32** %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.regional*, %struct.regional** %15, align 8
  %65 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %19, align 8
  %66 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %67, 2
  %69 = add nsw i32 2, %68
  %70 = call %struct.dns_msg* @dns_msg_create(i32* %60, i64 %61, i32 %62, i32 %63, %struct.regional* %64, i32 %69)
  %71 = load %struct.dns_msg**, %struct.dns_msg*** %16, align 8
  store %struct.dns_msg* %70, %struct.dns_msg** %71, align 8
  %72 = load %struct.dns_msg**, %struct.dns_msg*** %16, align 8
  %73 = load %struct.dns_msg*, %struct.dns_msg** %72, align 8
  %74 = icmp ne %struct.dns_msg* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %59
  %76 = load %struct.dns_msg**, %struct.dns_msg*** %16, align 8
  %77 = load %struct.dns_msg*, %struct.dns_msg** %76, align 8
  %78 = load %struct.regional*, %struct.regional** %15, align 8
  %79 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @dns_msg_authadd(%struct.dns_msg* %77, %struct.regional* %78, %struct.ub_packed_rrset_key* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %75, %59
  %84 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %85 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = call i32 @lock_rw_unlock(i32* %86)
  %88 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.delegpt* null, %struct.delegpt** %9, align 8
  br label %126

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %56
  %91 = load %struct.delegpt*, %struct.delegpt** %20, align 8
  %92 = load %struct.regional*, %struct.regional** %15, align 8
  %93 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %94 = call i32 @delegpt_rrset_add_ns(%struct.delegpt* %91, %struct.regional* %92, %struct.ub_packed_rrset_key* %93, i32 0)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %90
  %97 = call i32 @log_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %90
  %99 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %18, align 8
  %100 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 @lock_rw_unlock(i32* %101)
  %103 = load %struct.dns_msg**, %struct.dns_msg*** %16, align 8
  %104 = icmp ne %struct.dns_msg** %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load %struct.module_env*, %struct.module_env** %10, align 8
  %107 = load %struct.regional*, %struct.regional** %15, align 8
  %108 = load %struct.dns_msg**, %struct.dns_msg*** %16, align 8
  %109 = load %struct.dns_msg*, %struct.dns_msg** %108, align 8
  %110 = load %struct.delegpt*, %struct.delegpt** %20, align 8
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @find_add_ds(%struct.module_env* %106, %struct.regional* %107, %struct.dns_msg* %109, %struct.delegpt* %110, i32 %111)
  br label %113

113:                                              ; preds = %105, %98
  %114 = load %struct.module_env*, %struct.module_env** %10, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.regional*, %struct.regional** %15, align 8
  %117 = load %struct.delegpt*, %struct.delegpt** %20, align 8
  %118 = load i32, i32* %17, align 4
  %119 = load %struct.dns_msg**, %struct.dns_msg*** %16, align 8
  %120 = call i32 @find_add_addrs(%struct.module_env* %114, i32 %115, %struct.regional* %116, %struct.delegpt* %117, i32 %118, %struct.dns_msg** %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %113
  %123 = call i32 @log_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %113
  %125 = load %struct.delegpt*, %struct.delegpt** %20, align 8
  store %struct.delegpt* %125, %struct.delegpt** %9, align 8
  br label %126

126:                                              ; preds = %124, %83, %50, %30
  %127 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  ret %struct.delegpt* %127
}

declare dso_local %struct.ub_packed_rrset_key* @find_closest_of_type(%struct.module_env*, i32*, i64, i32, i32, i32, i32) #1

declare dso_local %struct.delegpt* @delegpt_create(%struct.regional*) #1

declare dso_local i32 @delegpt_set_name(%struct.delegpt*, %struct.regional*, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local %struct.dns_msg* @dns_msg_create(i32*, i64, i32, i32, %struct.regional*, i32) #1

declare dso_local i32 @dns_msg_authadd(%struct.dns_msg*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @delegpt_rrset_add_ns(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @find_add_ds(%struct.module_env*, %struct.regional*, %struct.dns_msg*, %struct.delegpt*, i32) #1

declare dso_local i32 @find_add_addrs(%struct.module_env*, i32, %struct.regional*, %struct.delegpt*, i32, %struct.dns_msg**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
