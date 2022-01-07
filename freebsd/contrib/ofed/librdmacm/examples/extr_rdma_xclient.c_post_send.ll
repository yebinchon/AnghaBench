; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_xclient.c_post_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_xclient.c_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.ibv_send_wr = type { i64, i32, %struct.TYPE_6__, i32, i32, %struct.ibv_sge*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ibv_sge = type { i64, i64, i64 }

@send_msg = common dso_local global i64 0, align 8
@IBV_WR_SEND = common dso_local global i32 0, align 4
@IBV_SEND_INLINE = common dso_local global i32 0, align 4
@hints = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@IBV_QPT_XRC_SEND = common dso_local global i64 0, align 8
@srqn = common dso_local global i32 0, align 4
@id = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"rdma_post_send\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_send() #0 {
  %1 = alloca %struct.ibv_send_wr, align 8
  %2 = alloca %struct.ibv_send_wr*, align 8
  %3 = alloca %struct.ibv_sge, align 8
  %4 = alloca i32, align 4
  %5 = load i64, i64* @send_msg, align 8
  %6 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 2
  store i64 %5, i64* %6, align 8
  %7 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 1
  store i64 8, i64* %7, align 8
  %8 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %3, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %1, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %1, i32 0, i32 6
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %1, i32 0, i32 5
  store %struct.ibv_sge* %3, %struct.ibv_sge** %11, align 8
  %12 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %1, i32 0, i32 1
  store i32 1, i32* %12, align 8
  %13 = load i32, i32* @IBV_WR_SEND, align 4
  %14 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %1, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @IBV_SEND_INLINE, align 4
  %16 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %1, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hints, i32 0, i32 0), align 8
  %18 = load i64, i64* @IBV_QPT_XRC_SEND, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %0
  %21 = load i32, i32* @srqn, align 4
  %22 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %1, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @id, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ibv_post_send(i32 %28, %struct.ibv_send_wr* %1, %struct.ibv_send_wr** %2)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %25
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @ibv_post_send(i32, %struct.ibv_send_wr*, %struct.ibv_send_wr**) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
