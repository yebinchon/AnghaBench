; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_detach_mcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_detach_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%union.ibv_gid = type { i32 }
%struct.ibv_detach_mcast = type { i64, i32, i32, i32 }

@DETACH_MCAST = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_detach_mcast(%struct.ibv_qp* %0, %union.ibv_gid* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_qp*, align 8
  %6 = alloca %union.ibv_gid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ibv_detach_mcast, align 8
  store %struct.ibv_qp* %0, %struct.ibv_qp** %5, align 8
  store %union.ibv_gid* %1, %union.ibv_gid** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @DETACH_MCAST, align 4
  %10 = call i32 @IBV_INIT_CMD(%struct.ibv_detach_mcast* %8, i32 24, i32 %9)
  %11 = getelementptr inbounds %struct.ibv_detach_mcast, %struct.ibv_detach_mcast* %8, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %union.ibv_gid*, %union.ibv_gid** %6, align 8
  %14 = bitcast %union.ibv_gid* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memcpy(i32 %12, i32 %15, i32 4)
  %17 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %18 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.ibv_detach_mcast, %struct.ibv_detach_mcast* %8, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.ibv_detach_mcast, %struct.ibv_detach_mcast* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ibv_detach_mcast, %struct.ibv_detach_mcast* %8, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %25 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @write(i32 %28, %struct.ibv_detach_mcast* %8, i32 24)
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 24
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %32
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @IBV_INIT_CMD(%struct.ibv_detach_mcast*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @write(i32, %struct.ibv_detach_mcast*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
