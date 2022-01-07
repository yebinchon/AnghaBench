; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_pp_post_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_pp_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32*, %struct.TYPE_9__*, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ibv_sge = type { i64, i32, i32 }
%struct.ibv_send_wr = type { i64, i32, i32, %struct.TYPE_8__, i32, %struct.ibv_sge*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ctx = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@IBV_WR_SEND = common dso_local global i32 0, align 4
@IBV_SEND_SIGNALED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pp_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_post_send(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_sge, align 8
  %4 = alloca %struct.ibv_send_wr, align 8
  %5 = alloca %struct.ibv_send_wr*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ctx, i32 0, i32 6), align 8
  %8 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 0
  store i64 %7, i64* %8, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ctx, i32 0, i32 5), align 8
  %10 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ctx, i32 0, i32 4), align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 6
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 5
  store %struct.ibv_sge* %3, %struct.ibv_sge** %19, align 8
  %20 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 1
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @IBV_WR_SEND, align 4
  %22 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ctx, i32 0, i32 3), align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ctx, i32 0, i32 3), align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %32, %38
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ctx, i32 0, i32 0), align 8
  %41 = srem i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ctx, i32 0, i32 3), align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ctx, i32 0, i32 1), align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %1
  %52 = load i32, i32* @IBV_SEND_SIGNALED, align 4
  br label %54

53:                                               ; preds = %1
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ctx, i32 0, i32 2), align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ibv_post_send(i32 %61, %struct.ibv_send_wr* %4, %struct.ibv_send_wr** %5)
  ret i32 %62
}

declare dso_local i32 @ibv_post_send(i32, %struct.ibv_send_wr*, %struct.ibv_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
