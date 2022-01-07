; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_ud_pingpong.c_pp_post_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_ud_pingpong.c_pp_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong_context = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_sge = type { i64, i32, i32 }
%struct.ibv_recv_wr = type { i32, %struct.ibv_sge*, i32 }

@PINGPONG_RECV_WRID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pingpong_context*, i32)* @pp_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_post_recv(%struct.pingpong_context* %0, i32 %1) #0 {
  %3 = alloca %struct.pingpong_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_sge, align 8
  %6 = alloca %struct.ibv_recv_wr, align 8
  %7 = alloca %struct.ibv_recv_wr*, align 8
  %8 = alloca i32, align 4
  store %struct.pingpong_context* %0, %struct.pingpong_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %5, i32 0, i32 0
  %10 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %11 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %9, align 8
  %14 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %5, i32 0, i32 1
  %15 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %16 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 8
  %20 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %5, i32 0, i32 2
  %21 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %22 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 40
  store i32 %24, i32* %20, align 4
  %25 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %6, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %6, i32 0, i32 1
  store %struct.ibv_sge* %5, %struct.ibv_sge** %26, align 8
  %27 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %6, i32 0, i32 2
  %28 = load i32, i32* @PINGPONG_RECV_WRID, align 4
  store i32 %28, i32* %27, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %41, %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %35 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @ibv_post_recv(i32 %36, %struct.ibv_recv_wr* %6, %struct.ibv_recv_wr** %7)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %44

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %29

44:                                               ; preds = %39, %29
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i64 @ibv_post_recv(i32, %struct.ibv_recv_wr*, %struct.ibv_recv_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
