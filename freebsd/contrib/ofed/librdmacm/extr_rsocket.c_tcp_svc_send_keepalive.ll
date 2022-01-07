; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_tcp_svc_send_keepalive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_tcp_svc_send_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32 }

@rs_connected = common dso_local global i32 0, align 4
@RS_OP_CTRL = common dso_local global i32 0, align 4
@RS_CTRL_KEEPALIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsocket*)* @tcp_svc_send_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_svc_send_keepalive(%struct.rsocket* %0) #0 {
  %2 = alloca %struct.rsocket*, align 8
  store %struct.rsocket* %0, %struct.rsocket** %2, align 8
  %3 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %4 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %3, i32 0, i32 1
  %5 = call i32 @fastlock_acquire(i32* %4)
  %6 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %7 = call i64 @rs_ctrl_avail(%struct.rsocket* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %11 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @rs_connected, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %18 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %22 = load i32, i32* @RS_OP_CTRL, align 4
  %23 = load i32, i32* @RS_CTRL_KEEPALIVE, align 4
  %24 = call i32 @rs_msg_set(i32 %22, i32 %23)
  %25 = call i32 @rs_post_write(%struct.rsocket* %21, i32* null, i32 0, i32 %24, i32 0, i64 0, i64 0)
  br label %26

26:                                               ; preds = %16, %9, %1
  %27 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %28 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %27, i32 0, i32 1
  %29 = call i32 @fastlock_release(i32* %28)
  ret void
}

declare dso_local i32 @fastlock_acquire(i32*) #1

declare dso_local i64 @rs_ctrl_avail(%struct.rsocket*) #1

declare dso_local i32 @rs_post_write(%struct.rsocket*, i32*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @rs_msg_set(i32, i32) #1

declare dso_local i32 @fastlock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
