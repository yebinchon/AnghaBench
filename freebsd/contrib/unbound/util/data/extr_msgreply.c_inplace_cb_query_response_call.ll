; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_inplace_cb_query_response_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_inplace_cb_query_response_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { %struct.inplace_cb** }
%struct.inplace_cb = type { i32, i32, i64, %struct.inplace_cb* }
%struct.module_qstate = type { i32 }
%struct.dns_msg = type { i32 }

@inplace_cb_query_response = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inplace_cb_query_response_call(%struct.module_env* %0, %struct.module_qstate* %1, %struct.dns_msg* %2) #0 {
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca %struct.dns_msg*, align 8
  %7 = alloca %struct.inplace_cb*, align 8
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store %struct.module_qstate* %1, %struct.module_qstate** %5, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %6, align 8
  %8 = load %struct.module_env*, %struct.module_env** %4, align 8
  %9 = getelementptr inbounds %struct.module_env, %struct.module_env* %8, i32 0, i32 0
  %10 = load %struct.inplace_cb**, %struct.inplace_cb*** %9, align 8
  %11 = load i64, i64* @inplace_cb_query_response, align 8
  %12 = getelementptr inbounds %struct.inplace_cb*, %struct.inplace_cb** %10, i64 %11
  %13 = load %struct.inplace_cb*, %struct.inplace_cb** %12, align 8
  store %struct.inplace_cb* %13, %struct.inplace_cb** %7, align 8
  br label %14

14:                                               ; preds = %39, %3
  %15 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  %16 = icmp ne %struct.inplace_cb* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %14
  %18 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  %19 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32 (%struct.module_qstate*, %struct.dns_msg*, i32, i32)**
  %22 = bitcast i32 (%struct.module_qstate*, %struct.dns_msg*, i32, i32)** %21 to i32 (%struct.module_qstate*, %struct.dns_msg*, i32, i32)*
  %23 = call i32 @fptr_whitelist_inplace_cb_query_response(i32 (%struct.module_qstate*, %struct.dns_msg*, i32, i32)* %22)
  %24 = call i32 @fptr_ok(i32 %23)
  %25 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  %26 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32 (%struct.module_qstate*, %struct.dns_msg*, i32, i32)**
  %29 = load i32 (%struct.module_qstate*, %struct.dns_msg*, i32, i32)*, i32 (%struct.module_qstate*, %struct.dns_msg*, i32, i32)** %28, align 8
  %30 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %31 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %32 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  %33 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  %36 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %29(%struct.module_qstate* %30, %struct.dns_msg* %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %17
  %40 = load %struct.inplace_cb*, %struct.inplace_cb** %7, align 8
  %41 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %40, i32 0, i32 3
  %42 = load %struct.inplace_cb*, %struct.inplace_cb** %41, align 8
  store %struct.inplace_cb* %42, %struct.inplace_cb** %7, align 8
  br label %14

43:                                               ; preds = %14
  ret i32 1
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_inplace_cb_query_response(i32 (%struct.module_qstate*, %struct.dns_msg*, i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
