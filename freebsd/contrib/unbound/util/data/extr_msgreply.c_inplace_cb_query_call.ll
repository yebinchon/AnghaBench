; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_inplace_cb_query_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_inplace_cb_query_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { %struct.inplace_cb** }
%struct.inplace_cb = type { i32, i32, i64, %struct.inplace_cb* }
%struct.query_info = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.module_qstate = type { i32 }
%struct.regional = type { i32 }

@inplace_cb_query = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inplace_cb_query_call(%struct.module_env* %0, %struct.query_info* %1, i32 %2, %struct.sockaddr_storage* %3, i32 %4, i32* %5, i64 %6, %struct.module_qstate* %7, %struct.regional* %8) #0 {
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca %struct.query_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_storage*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.module_qstate*, align 8
  %18 = alloca %struct.regional*, align 8
  %19 = alloca %struct.inplace_cb*, align 8
  store %struct.module_env* %0, %struct.module_env** %10, align 8
  store %struct.query_info* %1, %struct.query_info** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store %struct.module_qstate* %7, %struct.module_qstate** %17, align 8
  store %struct.regional* %8, %struct.regional** %18, align 8
  %20 = load %struct.module_env*, %struct.module_env** %10, align 8
  %21 = getelementptr inbounds %struct.module_env, %struct.module_env* %20, i32 0, i32 0
  %22 = load %struct.inplace_cb**, %struct.inplace_cb*** %21, align 8
  %23 = load i64, i64* @inplace_cb_query, align 8
  %24 = getelementptr inbounds %struct.inplace_cb*, %struct.inplace_cb** %22, i64 %23
  %25 = load %struct.inplace_cb*, %struct.inplace_cb** %24, align 8
  store %struct.inplace_cb* %25, %struct.inplace_cb** %19, align 8
  br label %26

26:                                               ; preds = %57, %9
  %27 = load %struct.inplace_cb*, %struct.inplace_cb** %19, align 8
  %28 = icmp ne %struct.inplace_cb* %27, null
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load %struct.inplace_cb*, %struct.inplace_cb** %19, align 8
  %31 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32 (%struct.query_info*, i32, %struct.module_qstate*, %struct.sockaddr_storage*, i32, i32*, i64, %struct.regional*, i32, i32)**
  %34 = bitcast i32 (%struct.query_info*, i32, %struct.module_qstate*, %struct.sockaddr_storage*, i32, i32*, i64, %struct.regional*, i32, i32)** %33 to i32 (%struct.query_info*, i32, %struct.module_qstate*, %struct.sockaddr_storage*, i32, i32*, i64, %struct.regional*, i32, i32)*
  %35 = call i32 @fptr_whitelist_inplace_cb_query(i32 (%struct.query_info*, i32, %struct.module_qstate*, %struct.sockaddr_storage*, i32, i32*, i64, %struct.regional*, i32, i32)* %34)
  %36 = call i32 @fptr_ok(i32 %35)
  %37 = load %struct.inplace_cb*, %struct.inplace_cb** %19, align 8
  %38 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32 (%struct.query_info*, i32, %struct.module_qstate*, %struct.sockaddr_storage*, i32, i32*, i64, %struct.regional*, i32, i32)**
  %41 = load i32 (%struct.query_info*, i32, %struct.module_qstate*, %struct.sockaddr_storage*, i32, i32*, i64, %struct.regional*, i32, i32)*, i32 (%struct.query_info*, i32, %struct.module_qstate*, %struct.sockaddr_storage*, i32, i32*, i64, %struct.regional*, i32, i32)** %40, align 8
  %42 = load %struct.query_info*, %struct.query_info** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.module_qstate*, %struct.module_qstate** %17, align 8
  %45 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %13, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = load i64, i64* %16, align 8
  %49 = load %struct.regional*, %struct.regional** %18, align 8
  %50 = load %struct.inplace_cb*, %struct.inplace_cb** %19, align 8
  %51 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.inplace_cb*, %struct.inplace_cb** %19, align 8
  %54 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %41(%struct.query_info* %42, i32 %43, %struct.module_qstate* %44, %struct.sockaddr_storage* %45, i32 %46, i32* %47, i64 %48, %struct.regional* %49, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %29
  %58 = load %struct.inplace_cb*, %struct.inplace_cb** %19, align 8
  %59 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %58, i32 0, i32 3
  %60 = load %struct.inplace_cb*, %struct.inplace_cb** %59, align 8
  store %struct.inplace_cb* %60, %struct.inplace_cb** %19, align 8
  br label %26

61:                                               ; preds = %26
  ret i32 1
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_inplace_cb_query(i32 (%struct.query_info*, i32, %struct.module_qstate*, %struct.sockaddr_storage*, i32, i32*, i64, %struct.regional*, i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
