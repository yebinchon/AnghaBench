; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_rc_pingpong.c_pp_post_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_rc_pingpong.c_pp_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong_context = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_sge = type { i64, i32, i32 }
%struct.ibv_send_wr = type { i32, i32, i32, %struct.ibv_sge*, i32 }

@IBV_WR_SEND = common dso_local global i32 0, align 4
@PINGPONG_SEND_WRID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pingpong_context*)* @pp_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_post_send(%struct.pingpong_context* %0) #0 {
  %2 = alloca %struct.pingpong_context*, align 8
  %3 = alloca %struct.ibv_sge, align 8
  %4 = alloca %struct.ibv_send_wr, align 8
  %5 = alloca %struct.ibv_send_wr*, align 8
  store %struct.pingpong_context* %0, %struct.pingpong_context** %2, align 8
  %6 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 0
  %7 = load %struct.pingpong_context*, %struct.pingpong_context** %2, align 8
  %8 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %6, align 8
  %11 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 1
  %12 = load %struct.pingpong_context*, %struct.pingpong_context** %2, align 8
  %13 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 8
  %17 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 2
  %18 = load %struct.pingpong_context*, %struct.pingpong_context** %2, align 8
  %19 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 1
  %23 = load %struct.pingpong_context*, %struct.pingpong_context** %2, align 8
  %24 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 2
  %27 = load i32, i32* @IBV_WR_SEND, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 3
  store %struct.ibv_sge* %3, %struct.ibv_sge** %28, align 8
  %29 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 4
  %30 = load i32, i32* @PINGPONG_SEND_WRID, align 4
  store i32 %30, i32* %29, align 8
  %31 = load %struct.pingpong_context*, %struct.pingpong_context** %2, align 8
  %32 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ibv_post_send(i32 %33, %struct.ibv_send_wr* %4, %struct.ibv_send_wr** %5)
  ret i32 %34
}

declare dso_local i32 @ibv_post_send(i32, %struct.ibv_send_wr*, %struct.ibv_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
