; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_disconnect_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_disconnect_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.rdma_cm_event = type { i32 }

@test = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [59 x i8] c"cmatose: failure in rdma_get_cm_event in disconnect events\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @disconnect_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disconnect_events() #0 {
  %1 = alloca %struct.rdma_cm_event*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %28, %0
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 1), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i1 [ false, %3 ], [ %9, %6 ]
  br i1 %11, label %12, label %29

12:                                               ; preds = %10
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 0), align 8
  %14 = call i32 @rdma_get_cm_event(i32 %13, %struct.rdma_cm_event** %1)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %1, align 8
  %19 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %1, align 8
  %22 = call i32 @cma_handler(i32 %20, %struct.rdma_cm_event* %21)
  store i32 %22, i32* %2, align 4
  %23 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %1, align 8
  %24 = call i32 @rdma_ack_cm_event(%struct.rdma_cm_event* %23)
  br label %28

25:                                               ; preds = %12
  %26 = call i32 @perror(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @errno, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %17
  br label %3

29:                                               ; preds = %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @rdma_get_cm_event(i32, %struct.rdma_cm_event**) #1

declare dso_local i32 @cma_handler(i32, %struct.rdma_cm_event*) #1

declare dso_local i32 @rdma_ack_cm_event(%struct.rdma_cm_event*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
