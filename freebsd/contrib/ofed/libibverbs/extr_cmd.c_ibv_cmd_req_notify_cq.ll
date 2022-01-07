; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_req_notify_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_req_notify_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_req_notify_cq = type { i32, i32 }

@REQ_NOTIFY_CQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_req_notify_cq(%struct.ibv_cq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibv_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_req_notify_cq, align 4
  store %struct.ibv_cq* %0, %struct.ibv_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @REQ_NOTIFY_CQ, align 4
  %8 = call i32 @IBV_INIT_CMD(%struct.ibv_req_notify_cq* %6, i32 8, i32 %7)
  %9 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %10 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.ibv_req_notify_cq, %struct.ibv_req_notify_cq* %6, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds %struct.ibv_req_notify_cq, %struct.ibv_req_notify_cq* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %20 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @write(i32 %23, %struct.ibv_req_notify_cq* %6, i32 8)
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @IBV_INIT_CMD(%struct.ibv_req_notify_cq*, i32, i32) #1

declare dso_local i32 @write(i32, %struct.ibv_req_notify_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
