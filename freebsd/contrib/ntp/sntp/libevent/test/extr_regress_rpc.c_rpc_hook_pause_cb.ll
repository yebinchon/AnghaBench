; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_rpc.c_rpc_hook_pause_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_rpc.c_rpc_hook_pause_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_hook_ctx_ = type { i32, i32 }

@hook_pause_cb_called = common dso_local global i32 0, align 4
@EVRPC_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @rpc_hook_pause_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_hook_pause_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rpc_hook_ctx_*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.rpc_hook_ctx_*
  store %struct.rpc_hook_ctx_* %9, %struct.rpc_hook_ctx_** %7, align 8
  %10 = load i32, i32* @hook_pause_cb_called, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @hook_pause_cb_called, align 4
  %12 = load %struct.rpc_hook_ctx_*, %struct.rpc_hook_ctx_** %7, align 8
  %13 = getelementptr inbounds %struct.rpc_hook_ctx_, %struct.rpc_hook_ctx_* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rpc_hook_ctx_*, %struct.rpc_hook_ctx_** %7, align 8
  %16 = getelementptr inbounds %struct.rpc_hook_ctx_, %struct.rpc_hook_ctx_* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EVRPC_CONTINUE, align 4
  %19 = call i32 @evrpc_resume_request(i32 %14, i32 %17, i32 %18)
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @free(i8* %20)
  ret void
}

declare dso_local i32 @evrpc_resume_request(i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
