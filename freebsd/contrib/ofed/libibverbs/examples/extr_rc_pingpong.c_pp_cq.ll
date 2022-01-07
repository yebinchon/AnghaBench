; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_rc_pingpong.c_pp_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_rc_pingpong.c_pp_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32 }
%struct.pingpong_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ibv_cq*, i32 }

@use_ts = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibv_cq* (%struct.pingpong_context*)* @pp_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibv_cq* @pp_cq(%struct.pingpong_context* %0) #0 {
  %2 = alloca %struct.pingpong_context*, align 8
  store %struct.pingpong_context* %0, %struct.pingpong_context** %2, align 8
  %3 = load i64, i64* @use_ts, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.pingpong_context*, %struct.pingpong_context** %2, align 8
  %7 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.ibv_cq* @ibv_cq_ex_to_cq(i32 %9)
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.pingpong_context*, %struct.pingpong_context** %2, align 8
  %13 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ibv_cq*, %struct.ibv_cq** %14, align 8
  br label %16

16:                                               ; preds = %11, %5
  %17 = phi %struct.ibv_cq* [ %10, %5 ], [ %15, %11 ]
  ret %struct.ibv_cq* %17
}

declare dso_local %struct.ibv_cq* @ibv_cq_ex_to_cq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
