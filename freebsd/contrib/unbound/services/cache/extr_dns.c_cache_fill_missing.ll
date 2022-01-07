; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_cache_fill_missing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_cache_fill_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32, i32* }
%struct.regional = type { i32 }
%struct.delegpt = type { %struct.delegpt_ns* }
%struct.delegpt_ns = type { i32, i32, i32, %struct.delegpt_ns* }
%struct.msgreply_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"found in cache\00", align 1
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_fill_missing(%struct.module_env* %0, i32 %1, %struct.regional* %2, %struct.delegpt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regional*, align 8
  %9 = alloca %struct.delegpt*, align 8
  %10 = alloca %struct.delegpt_ns*, align 8
  %11 = alloca %struct.msgreply_entry*, align 8
  %12 = alloca %struct.ub_packed_rrset_key*, align 8
  %13 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.regional* %2, %struct.regional** %8, align 8
  store %struct.delegpt* %3, %struct.delegpt** %9, align 8
  %14 = load %struct.module_env*, %struct.module_env** %6, align 8
  %15 = getelementptr inbounds %struct.module_env, %struct.module_env* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %19 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %18, i32 0, i32 0
  %20 = load %struct.delegpt_ns*, %struct.delegpt_ns** %19, align 8
  store %struct.delegpt_ns* %20, %struct.delegpt_ns** %10, align 8
  br label %21

21:                                               ; preds = %155, %4
  %22 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %23 = icmp ne %struct.delegpt_ns* %22, null
  br i1 %23, label %24, label %159

24:                                               ; preds = %21
  %25 = load %struct.module_env*, %struct.module_env** %6, align 8
  %26 = getelementptr inbounds %struct.module_env, %struct.module_env* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %29 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %32 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %27, i32 %30, i32 %33, i32 %34, i32 %35, i32 0, i32 %36, i32 0)
  store %struct.ub_packed_rrset_key* %37, %struct.ub_packed_rrset_key** %12, align 8
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %39 = icmp ne %struct.ub_packed_rrset_key* %38, null
  br i1 %39, label %40, label %66

40:                                               ; preds = %24
  %41 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %42 = load %struct.regional*, %struct.regional** %8, align 8
  %43 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %44 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %45 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @delegpt_add_rrset_A(%struct.delegpt* %41, %struct.regional* %42, %struct.ub_packed_rrset_key* %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %51 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @lock_rw_unlock(i32* %52)
  store i32 0, i32* %5, align 4
  br label %160

54:                                               ; preds = %40
  %55 = load i32, i32* @VERB_ALGO, align 4
  %56 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %57 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @log_nametypeclass(i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  %62 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %63 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @lock_rw_unlock(i32* %64)
  br label %89

66:                                               ; preds = %24
  %67 = load %struct.module_env*, %struct.module_env** %6, align 8
  %68 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %69 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %72 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call %struct.msgreply_entry* @msg_cache_lookup(%struct.module_env* %67, i32 %70, i32 %73, i32 %74, i32 %75, i32 0, i32 %76, i32 0)
  store %struct.msgreply_entry* %77, %struct.msgreply_entry** %11, align 8
  %78 = load %struct.msgreply_entry*, %struct.msgreply_entry** %11, align 8
  %79 = icmp ne %struct.msgreply_entry* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %66
  %81 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %82 = load %struct.msgreply_entry*, %struct.msgreply_entry** %11, align 8
  %83 = call i32 @delegpt_add_neg_msg(%struct.delegpt* %81, %struct.msgreply_entry* %82)
  %84 = load %struct.msgreply_entry*, %struct.msgreply_entry** %11, align 8
  %85 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = call i32 @lock_rw_unlock(i32* %86)
  br label %88

88:                                               ; preds = %80, %66
  br label %89

89:                                               ; preds = %88, %54
  %90 = load %struct.module_env*, %struct.module_env** %6, align 8
  %91 = getelementptr inbounds %struct.module_env, %struct.module_env* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %94 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %97 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %92, i32 %95, i32 %98, i32 %99, i32 %100, i32 0, i32 %101, i32 0)
  store %struct.ub_packed_rrset_key* %102, %struct.ub_packed_rrset_key** %12, align 8
  %103 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %104 = icmp ne %struct.ub_packed_rrset_key* %103, null
  br i1 %104, label %105, label %131

105:                                              ; preds = %89
  %106 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %107 = load %struct.regional*, %struct.regional** %8, align 8
  %108 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %109 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %110 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @delegpt_add_rrset_AAAA(%struct.delegpt* %106, %struct.regional* %107, %struct.ub_packed_rrset_key* %108, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %105
  %115 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %116 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = call i32 @lock_rw_unlock(i32* %117)
  store i32 0, i32* %5, align 4
  br label %160

119:                                              ; preds = %105
  %120 = load i32, i32* @VERB_ALGO, align 4
  %121 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %122 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @log_nametypeclass(i32 %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %123, i32 %124, i32 %125)
  %127 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %128 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = call i32 @lock_rw_unlock(i32* %129)
  br label %154

131:                                              ; preds = %89
  %132 = load %struct.module_env*, %struct.module_env** %6, align 8
  %133 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %134 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %137 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call %struct.msgreply_entry* @msg_cache_lookup(%struct.module_env* %132, i32 %135, i32 %138, i32 %139, i32 %140, i32 0, i32 %141, i32 0)
  store %struct.msgreply_entry* %142, %struct.msgreply_entry** %11, align 8
  %143 = load %struct.msgreply_entry*, %struct.msgreply_entry** %11, align 8
  %144 = icmp ne %struct.msgreply_entry* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %131
  %146 = load %struct.delegpt*, %struct.delegpt** %9, align 8
  %147 = load %struct.msgreply_entry*, %struct.msgreply_entry** %11, align 8
  %148 = call i32 @delegpt_add_neg_msg(%struct.delegpt* %146, %struct.msgreply_entry* %147)
  %149 = load %struct.msgreply_entry*, %struct.msgreply_entry** %11, align 8
  %150 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = call i32 @lock_rw_unlock(i32* %151)
  br label %153

153:                                              ; preds = %145, %131
  br label %154

154:                                              ; preds = %153, %119
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %157 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %156, i32 0, i32 3
  %158 = load %struct.delegpt_ns*, %struct.delegpt_ns** %157, align 8
  store %struct.delegpt_ns* %158, %struct.delegpt_ns** %10, align 8
  br label %21

159:                                              ; preds = %21
  store i32 1, i32* %5, align 4
  br label %160

160:                                              ; preds = %159, %114, %49
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @delegpt_add_rrset_A(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.msgreply_entry* @msg_cache_lookup(%struct.module_env*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @delegpt_add_neg_msg(%struct.delegpt*, %struct.msgreply_entry*) #1

declare dso_local i32 @delegpt_add_rrset_AAAA(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
