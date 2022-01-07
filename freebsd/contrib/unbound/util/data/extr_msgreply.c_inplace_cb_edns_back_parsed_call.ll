; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_inplace_cb_edns_back_parsed_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_inplace_cb_edns_back_parsed_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { %struct.inplace_cb** }
%struct.inplace_cb = type { i32, i32, i64, %struct.inplace_cb* }
%struct.module_qstate = type { i32 }

@inplace_cb_edns_back_parsed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inplace_cb_edns_back_parsed_call(%struct.module_env* %0, %struct.module_qstate* %1) #0 {
  %3 = alloca %struct.module_env*, align 8
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca %struct.inplace_cb*, align 8
  store %struct.module_env* %0, %struct.module_env** %3, align 8
  store %struct.module_qstate* %1, %struct.module_qstate** %4, align 8
  %6 = load %struct.module_env*, %struct.module_env** %3, align 8
  %7 = getelementptr inbounds %struct.module_env, %struct.module_env* %6, i32 0, i32 0
  %8 = load %struct.inplace_cb**, %struct.inplace_cb*** %7, align 8
  %9 = load i64, i64* @inplace_cb_edns_back_parsed, align 8
  %10 = getelementptr inbounds %struct.inplace_cb*, %struct.inplace_cb** %8, i64 %9
  %11 = load %struct.inplace_cb*, %struct.inplace_cb** %10, align 8
  store %struct.inplace_cb* %11, %struct.inplace_cb** %5, align 8
  br label %12

12:                                               ; preds = %36, %2
  %13 = load %struct.inplace_cb*, %struct.inplace_cb** %5, align 8
  %14 = icmp ne %struct.inplace_cb* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = load %struct.inplace_cb*, %struct.inplace_cb** %5, align 8
  %17 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32 (%struct.module_qstate*, i32, i32)**
  %20 = bitcast i32 (%struct.module_qstate*, i32, i32)** %19 to i32 (%struct.module_qstate*, i32, i32)*
  %21 = call i32 @fptr_whitelist_inplace_cb_edns_back_parsed(i32 (%struct.module_qstate*, i32, i32)* %20)
  %22 = call i32 @fptr_ok(i32 %21)
  %23 = load %struct.inplace_cb*, %struct.inplace_cb** %5, align 8
  %24 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32 (%struct.module_qstate*, i32, i32)**
  %27 = load i32 (%struct.module_qstate*, i32, i32)*, i32 (%struct.module_qstate*, i32, i32)** %26, align 8
  %28 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %29 = load %struct.inplace_cb*, %struct.inplace_cb** %5, align 8
  %30 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inplace_cb*, %struct.inplace_cb** %5, align 8
  %33 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %27(%struct.module_qstate* %28, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %15
  %37 = load %struct.inplace_cb*, %struct.inplace_cb** %5, align 8
  %38 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %37, i32 0, i32 3
  %39 = load %struct.inplace_cb*, %struct.inplace_cb** %38, align 8
  store %struct.inplace_cb* %39, %struct.inplace_cb** %5, align 8
  br label %12

40:                                               ; preds = %12
  ret i32 1
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_inplace_cb_edns_back_parsed(i32 (%struct.module_qstate*, i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
