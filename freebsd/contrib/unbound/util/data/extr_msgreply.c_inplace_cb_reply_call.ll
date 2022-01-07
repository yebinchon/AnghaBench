; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_inplace_cb_reply_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_inplace_cb_reply_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32* }
%struct.query_info = type { i32 }
%struct.module_qstate = type { i32 }
%struct.reply_info = type { i32 }
%struct.edns_data = type { i32 }
%struct.comm_reply = type { i32 }
%struct.regional = type { i32 }

@inplace_cb_reply = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inplace_cb_reply_call(%struct.module_env* %0, %struct.query_info* %1, %struct.module_qstate* %2, %struct.reply_info* %3, i32 %4, %struct.edns_data* %5, %struct.comm_reply* %6, %struct.regional* %7) #0 {
  %9 = alloca %struct.module_env*, align 8
  %10 = alloca %struct.query_info*, align 8
  %11 = alloca %struct.module_qstate*, align 8
  %12 = alloca %struct.reply_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.edns_data*, align 8
  %15 = alloca %struct.comm_reply*, align 8
  %16 = alloca %struct.regional*, align 8
  store %struct.module_env* %0, %struct.module_env** %9, align 8
  store %struct.query_info* %1, %struct.query_info** %10, align 8
  store %struct.module_qstate* %2, %struct.module_qstate** %11, align 8
  store %struct.reply_info* %3, %struct.reply_info** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.edns_data* %5, %struct.edns_data** %14, align 8
  store %struct.comm_reply* %6, %struct.comm_reply** %15, align 8
  store %struct.regional* %7, %struct.regional** %16, align 8
  %17 = load %struct.module_env*, %struct.module_env** %9, align 8
  %18 = getelementptr inbounds %struct.module_env, %struct.module_env* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @inplace_cb_reply, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @inplace_cb_reply, align 8
  %24 = load %struct.query_info*, %struct.query_info** %10, align 8
  %25 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %26 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.edns_data*, %struct.edns_data** %14, align 8
  %29 = load %struct.comm_reply*, %struct.comm_reply** %15, align 8
  %30 = load %struct.regional*, %struct.regional** %16, align 8
  %31 = call i32 @inplace_cb_reply_call_generic(i32 %22, i64 %23, %struct.query_info* %24, %struct.module_qstate* %25, %struct.reply_info* %26, i32 %27, %struct.edns_data* %28, %struct.comm_reply* %29, %struct.regional* %30)
  ret i32 %31
}

declare dso_local i32 @inplace_cb_reply_call_generic(i32, i64, %struct.query_info*, %struct.module_qstate*, %struct.reply_info*, i32, %struct.edns_data*, %struct.comm_reply*, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
