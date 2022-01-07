; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_handle_ipv6_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_handle_ipv6_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, i32**, i32*, i32, %struct.TYPE_4__*, i32, %struct.query_info }
%struct.TYPE_4__ = type { i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)*, i64* }
%struct.query_info = type { i64, i32 }
%struct.dns64_env = type { i64, i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_storage = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@module_wait_module = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dns64: rewrite PTR record\00", align 1
@MAX_PTR_QNAME_IPV4 = common dso_local global i32 0, align 4
@module_error = common dso_local global i32 0, align 4
@module_state_initial = common dso_local global i32 0, align 4
@module_wait_subquery = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, i32)* @handle_ipv6_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ipv6_ptr(%struct.module_qstate* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dns64_env*, align 8
  %7 = alloca %struct.module_qstate*, align 8
  %8 = alloca %struct.query_info, align 8
  %9 = alloca %struct.sockaddr_in6, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %11 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.dns64_env*
  store %struct.dns64_env* %19, %struct.dns64_env** %6, align 8
  store %struct.module_qstate* null, %struct.module_qstate** %7, align 8
  %20 = call i32 @memset(%struct.sockaddr_in6* %9, i32 0, i32 8)
  %21 = load i32, i32* @AF_INET6, align 4
  %22 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %24 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.query_info, %struct.query_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ptr_to_ipv6(i8* %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @module_wait_module, align 4
  store i32 %34, i32* %3, align 4
  br label %120

35:                                               ; preds = %2
  %36 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr_storage*
  %37 = load %struct.dns64_env*, %struct.dns64_env** %6, align 8
  %38 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %37, i32 0, i32 1
  %39 = load %struct.dns64_env*, %struct.dns64_env** %6, align 8
  %40 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @addr_in_common(%struct.sockaddr_storage* %36, i32 128, i32* %38, i64 %41, i32 8)
  %43 = load %struct.dns64_env*, %struct.dns64_env** %6, align 8
  %44 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @module_wait_module, align 4
  store i32 %48, i32* %3, align 4
  br label %120

49:                                               ; preds = %35
  %50 = load i32, i32* @VERB_ALGO, align 4
  %51 = call i32 @verbose(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %53 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %52, i32 0, i32 6
  %54 = bitcast %struct.query_info* %8 to i8*
  %55 = bitcast %struct.query_info* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  %56 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %57 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MAX_PTR_QNAME_IPV4, align 4
  %60 = call i64 @regional_alloc(i32 %58, i32 %59)
  %61 = getelementptr inbounds %struct.query_info, %struct.query_info* %8, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = icmp ne i64 %60, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %49
  %64 = load i32, i32* @module_error, align 4
  store i32 %64, i32* %3, align 4
  br label %120

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dns64_env*, %struct.dns64_env** %6, align 8
  %70 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @extract_ipv4(i32 %68, i64 %71)
  %73 = getelementptr inbounds %struct.query_info, %struct.query_info* %8, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @ipv4_to_ptr(i32 %72, i8* %75)
  %77 = getelementptr inbounds %struct.query_info, %struct.query_info* %8, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  %78 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %79 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %78, i32 0, i32 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)*, i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)** %81, align 8
  %83 = call i32 @fptr_whitelist_modenv_attach_sub(i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)* %82)
  %84 = call i32 @fptr_ok(i32 %83)
  %85 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %86 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %85, i32 0, i32 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)*, i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)** %88, align 8
  %90 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %91 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %92 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 %89(%struct.module_qstate* %90, %struct.query_info* %8, i32 %93, i32 0, i32 0, %struct.module_qstate** %7)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %65
  %97 = load i32, i32* @module_error, align 4
  store i32 %97, i32* %3, align 4
  br label %120

98:                                               ; preds = %65
  %99 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %100 = icmp ne %struct.module_qstate* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %104 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @module_state_initial, align 4
  %106 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %107 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  %112 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %113 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %112, i32 0, i32 1
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %101, %98
  %119 = load i32, i32* @module_wait_subquery, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %96, %63, %47, %33
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @ptr_to_ipv6(i8*, i32) #1

declare dso_local i64 @addr_in_common(%struct.sockaddr_storage*, i32, i32*, i64, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @regional_alloc(i32, i32) #1

declare dso_local i32 @ipv4_to_ptr(i32, i8*) #1

declare dso_local i32 @extract_ipv4(i32, i64) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_modenv_attach_sub(i32 (%struct.module_qstate*, %struct.query_info*, i32, i32, i32, %struct.module_qstate**)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
