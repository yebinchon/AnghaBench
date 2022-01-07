; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svc_rpc_gss_initialised = common dso_local global i64 0, align 8
@CLIENT_HASH_SIZE = common dso_local global i32 0, align 4
@svc_rpc_gss_client_hash = common dso_local global i32* null, align 8
@svc_rpc_gss_clients = common dso_local global i32 0, align 4
@RPCSEC_GSS = common dso_local global i32 0, align 4
@svc_rpc_gss = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @svc_rpc_gss_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rpc_gss_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @svc_rpc_gss_initialised, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %15, %4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @CLIENT_HASH_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load i32*, i32** @svc_rpc_gss_client_hash, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32 @TAILQ_INIT(i32* %13)
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %5

18:                                               ; preds = %5
  %19 = call i32 @TAILQ_INIT(i32* @svc_rpc_gss_clients)
  %20 = load i32, i32* @RPCSEC_GSS, align 4
  %21 = load i32, i32* @svc_rpc_gss, align 4
  %22 = call i32 @svc_auth_reg(i32 %20, i32 %21)
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* @svc_rpc_gss_initialised, align 8
  br label %24

24:                                               ; preds = %18, %0
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @svc_auth_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
