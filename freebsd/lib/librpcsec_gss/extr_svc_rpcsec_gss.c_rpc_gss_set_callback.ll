; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_set_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_rpc_gss_set_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_callback = type { i32 }

@RPC_GSS_ER_SYSTEMERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svc_rpc_gss_callbacks = common dso_local global i32 0, align 4
@cb_link = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_gss_set_callback(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.svc_rpc_gss_callback*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.svc_rpc_gss_callback* @mem_alloc(i32 4)
  store %struct.svc_rpc_gss_callback* %5, %struct.svc_rpc_gss_callback** %4, align 8
  %6 = load %struct.svc_rpc_gss_callback*, %struct.svc_rpc_gss_callback** %4, align 8
  %7 = icmp ne %struct.svc_rpc_gss_callback* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @RPC_GSS_ER_SYSTEMERROR, align 4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = call i32 @_rpc_gss_set_error(i32 %9, i32 %10)
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.svc_rpc_gss_callback*, %struct.svc_rpc_gss_callback** %4, align 8
  %17 = getelementptr inbounds %struct.svc_rpc_gss_callback, %struct.svc_rpc_gss_callback* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.svc_rpc_gss_callback*, %struct.svc_rpc_gss_callback** %4, align 8
  %19 = load i32, i32* @cb_link, align 4
  %20 = call i32 @SLIST_INSERT_HEAD(i32* @svc_rpc_gss_callbacks, %struct.svc_rpc_gss_callback* %18, i32 %19)
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %13, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.svc_rpc_gss_callback* @mem_alloc(i32) #1

declare dso_local i32 @_rpc_gss_set_error(i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.svc_rpc_gss_callback*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
