; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_inplace_cb_reply_call_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_inplace_cb_reply_call_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inplace_cb = type { i32, i32, i64, %struct.inplace_cb* }
%struct.query_info = type { i32 }
%struct.module_qstate = type { %struct.edns_option* }
%struct.edns_option = type { i32 }
%struct.reply_info = type { i32 }
%struct.edns_data = type { %struct.edns_option* }
%struct.comm_reply = type { i32 }
%struct.regional = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inplace_cb*, i32, %struct.query_info*, %struct.module_qstate*, %struct.reply_info*, i32, %struct.edns_data*, %struct.comm_reply*, %struct.regional*)* @inplace_cb_reply_call_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inplace_cb_reply_call_generic(%struct.inplace_cb* %0, i32 %1, %struct.query_info* %2, %struct.module_qstate* %3, %struct.reply_info* %4, i32 %5, %struct.edns_data* %6, %struct.comm_reply* %7, %struct.regional* %8) #0 {
  %10 = alloca %struct.inplace_cb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.query_info*, align 8
  %13 = alloca %struct.module_qstate*, align 8
  %14 = alloca %struct.reply_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.edns_data*, align 8
  %17 = alloca %struct.comm_reply*, align 8
  %18 = alloca %struct.regional*, align 8
  %19 = alloca %struct.inplace_cb*, align 8
  %20 = alloca %struct.edns_option*, align 8
  store %struct.inplace_cb* %0, %struct.inplace_cb** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.query_info* %2, %struct.query_info** %12, align 8
  store %struct.module_qstate* %3, %struct.module_qstate** %13, align 8
  store %struct.reply_info* %4, %struct.reply_info** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.edns_data* %6, %struct.edns_data** %16, align 8
  store %struct.comm_reply* %7, %struct.comm_reply** %17, align 8
  store %struct.regional* %8, %struct.regional** %18, align 8
  store %struct.edns_option* null, %struct.edns_option** %20, align 8
  %21 = load %struct.module_qstate*, %struct.module_qstate** %13, align 8
  %22 = icmp ne %struct.module_qstate* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %9
  %24 = load %struct.module_qstate*, %struct.module_qstate** %13, align 8
  %25 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %24, i32 0, i32 0
  %26 = load %struct.edns_option*, %struct.edns_option** %25, align 8
  store %struct.edns_option* %26, %struct.edns_option** %20, align 8
  br label %27

27:                                               ; preds = %23, %9
  %28 = load %struct.inplace_cb*, %struct.inplace_cb** %10, align 8
  store %struct.inplace_cb* %28, %struct.inplace_cb** %19, align 8
  br label %29

29:                                               ; preds = %60, %27
  %30 = load %struct.inplace_cb*, %struct.inplace_cb** %19, align 8
  %31 = icmp ne %struct.inplace_cb* %30, null
  br i1 %31, label %32, label %64

32:                                               ; preds = %29
  %33 = load %struct.inplace_cb*, %struct.inplace_cb** %19, align 8
  %34 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32 (%struct.query_info*, %struct.module_qstate*, %struct.reply_info*, i32, %struct.edns_data*, %struct.edns_option**, %struct.comm_reply*, %struct.regional*, i32, i32)**
  %37 = bitcast i32 (%struct.query_info*, %struct.module_qstate*, %struct.reply_info*, i32, %struct.edns_data*, %struct.edns_option**, %struct.comm_reply*, %struct.regional*, i32, i32)** %36 to i32 (%struct.query_info*, %struct.module_qstate*, %struct.reply_info*, i32, %struct.edns_data*, %struct.edns_option**, %struct.comm_reply*, %struct.regional*, i32, i32)*
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @fptr_whitelist_inplace_cb_reply_generic(i32 (%struct.query_info*, %struct.module_qstate*, %struct.reply_info*, i32, %struct.edns_data*, %struct.edns_option**, %struct.comm_reply*, %struct.regional*, i32, i32)* %37, i32 %38)
  %40 = call i32 @fptr_ok(i32 %39)
  %41 = load %struct.inplace_cb*, %struct.inplace_cb** %19, align 8
  %42 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32 (%struct.query_info*, %struct.module_qstate*, %struct.reply_info*, i32, %struct.edns_data*, %struct.edns_option**, %struct.comm_reply*, %struct.regional*, i32, i32)**
  %45 = load i32 (%struct.query_info*, %struct.module_qstate*, %struct.reply_info*, i32, %struct.edns_data*, %struct.edns_option**, %struct.comm_reply*, %struct.regional*, i32, i32)*, i32 (%struct.query_info*, %struct.module_qstate*, %struct.reply_info*, i32, %struct.edns_data*, %struct.edns_option**, %struct.comm_reply*, %struct.regional*, i32, i32)** %44, align 8
  %46 = load %struct.query_info*, %struct.query_info** %12, align 8
  %47 = load %struct.module_qstate*, %struct.module_qstate** %13, align 8
  %48 = load %struct.reply_info*, %struct.reply_info** %14, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.edns_data*, %struct.edns_data** %16, align 8
  %51 = load %struct.comm_reply*, %struct.comm_reply** %17, align 8
  %52 = load %struct.regional*, %struct.regional** %18, align 8
  %53 = load %struct.inplace_cb*, %struct.inplace_cb** %19, align 8
  %54 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.inplace_cb*, %struct.inplace_cb** %19, align 8
  %57 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %45(%struct.query_info* %46, %struct.module_qstate* %47, %struct.reply_info* %48, i32 %49, %struct.edns_data* %50, %struct.edns_option** %20, %struct.comm_reply* %51, %struct.regional* %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %32
  %61 = load %struct.inplace_cb*, %struct.inplace_cb** %19, align 8
  %62 = getelementptr inbounds %struct.inplace_cb, %struct.inplace_cb* %61, i32 0, i32 3
  %63 = load %struct.inplace_cb*, %struct.inplace_cb** %62, align 8
  store %struct.inplace_cb* %63, %struct.inplace_cb** %19, align 8
  br label %29

64:                                               ; preds = %29
  %65 = load %struct.edns_option*, %struct.edns_option** %20, align 8
  %66 = load %struct.edns_data*, %struct.edns_data** %16, align 8
  %67 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %66, i32 0, i32 0
  store %struct.edns_option* %65, %struct.edns_option** %67, align 8
  ret i32 1
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_inplace_cb_reply_generic(i32 (%struct.query_info*, %struct.module_qstate*, %struct.reply_info*, i32, %struct.edns_data*, %struct.edns_option**, %struct.comm_reply*, %struct.regional*, i32, i32)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
