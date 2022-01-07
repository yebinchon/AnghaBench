; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_probe_anchor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_probe_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32, i32, i32, i64*, i32, i32* }
%struct.trust_anchor = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.query_info = type { i32, i32, i32, i32, i32* }
%struct.edns_data = type { i32, i32, i32*, i32, i64, i64 }

@BIT_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"out of memory making 5011 probe\00", align 1
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"autotrust probe\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"retry probe set in %d seconds\00", align 1
@EDNS_DO = common dso_local global i32 0, align 4
@probe_answer_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.trust_anchor*)* @probe_anchor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_anchor(%struct.module_env* %0, %struct.trust_anchor* %1) #0 {
  %3 = alloca %struct.module_env*, align 8
  %4 = alloca %struct.trust_anchor*, align 8
  %5 = alloca %struct.query_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.edns_data, align 8
  %8 = alloca i32*, align 8
  store %struct.module_env* %0, %struct.module_env** %3, align 8
  store %struct.trust_anchor* %1, %struct.trust_anchor** %4, align 8
  %9 = load i32, i32* @BIT_RD, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.module_env*, %struct.module_env** %3, align 8
  %11 = getelementptr inbounds %struct.module_env, %struct.module_env* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  %13 = load %struct.module_env*, %struct.module_env** %3, align 8
  %14 = getelementptr inbounds %struct.module_env, %struct.module_env* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %17 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %20 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regional_alloc_init(i32 %15, i32 %18, i32 %21)
  %23 = getelementptr inbounds %struct.query_info, %struct.query_info* %5, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.query_info, %struct.query_info* %5, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %108

29:                                               ; preds = %2
  %30 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %31 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.query_info, %struct.query_info* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %35 = getelementptr inbounds %struct.query_info, %struct.query_info* %5, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %37 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.query_info, %struct.query_info* %5, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.query_info, %struct.query_info* %5, i32 0, i32 4
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @VERB_ALGO, align 4
  %42 = call i32 @log_query_info(i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.query_info* %5)
  %43 = load i32, i32* @VERB_ALGO, align 4
  %44 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %45 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.module_env*, %struct.module_env** %3, align 8
  %51 = getelementptr inbounds %struct.module_env, %struct.module_env* %50, i32 0, i32 3
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = sub nsw i32 %49, %54
  %56 = call i32 @verbose(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @EDNS_DO, align 4
  %61 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 3
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 2
  store i32* null, i32** %62, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @sldns_buffer_capacity(i32* %63)
  %65 = icmp slt i32 %64, 65535
  br i1 %65, label %66, label %70

66:                                               ; preds = %29
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @sldns_buffer_capacity(i32* %67)
  %69 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  br label %72

70:                                               ; preds = %29
  %71 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %7, i32 0, i32 1
  store i32 65535, i32* %71, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %74 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %73, i32 0, i32 0
  %75 = call i32 @lock_basic_unlock(i32* %74)
  %76 = load %struct.module_env*, %struct.module_env** %3, align 8
  %77 = getelementptr inbounds %struct.module_env, %struct.module_env* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.query_info, %struct.query_info* %5, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.query_info, %struct.query_info* %5, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.query_info, %struct.query_info* %5, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.query_info, %struct.query_info* %5, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @rrset_cache_remove(i32 %78, i32 %80, i32 %82, i32 %84, i32 %86, i32 0)
  %88 = load %struct.module_env*, %struct.module_env** %3, align 8
  %89 = getelementptr inbounds %struct.module_env, %struct.module_env* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.query_info, %struct.query_info* %5, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.query_info, %struct.query_info* %5, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.query_info, %struct.query_info* %5, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @key_cache_remove(i32 %90, i32 %92, i32 %94, i32 %96)
  %98 = load %struct.module_env*, %struct.module_env** %3, align 8
  %99 = getelementptr inbounds %struct.module_env, %struct.module_env* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = load %struct.module_env*, %struct.module_env** %3, align 8
  %104 = call i32 @mesh_new_callback(i32 %100, %struct.query_info* %5, i32 %101, %struct.edns_data* %7, i32* %102, i32 0, i32* @probe_answer_cb, %struct.module_env* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %72
  %107 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %27, %106, %72
  ret void
}

declare dso_local i32 @regional_alloc_init(i32, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @log_query_info(i32, i8*, %struct.query_info*) #1

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @sldns_buffer_capacity(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @rrset_cache_remove(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @key_cache_remove(i32, i32, i32, i32) #1

declare dso_local i32 @mesh_new_callback(i32, %struct.query_info*, i32, %struct.edns_data*, i32*, i32, i32*, %struct.module_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
