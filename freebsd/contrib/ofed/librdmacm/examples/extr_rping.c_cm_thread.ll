; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_cm_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_cm_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i32 }
%struct.rdma_cm_event = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"rdma_get_cm_event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @cm_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cm_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rping_cb*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.rping_cb*
  store %struct.rping_cb* %7, %struct.rping_cb** %3, align 8
  br label %8

8:                                                ; preds = %1, %32
  %9 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %10 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @rdma_get_cm_event(i32 %11, %struct.rdma_cm_event** %4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @exit(i32 %17) #3
  unreachable

19:                                               ; preds = %8
  %20 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %21 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %24 = call i32 @rping_cma_event_handler(i32 %22, %struct.rdma_cm_event* %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %26 = call i32 @rdma_ack_cm_event(%struct.rdma_cm_event* %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @exit(i32 %30) #3
  unreachable

32:                                               ; preds = %19
  br label %8
}

declare dso_local i32 @rdma_get_cm_event(i32, %struct.rdma_cm_event**) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @rping_cma_event_handler(i32, %struct.rdma_cm_event*) #1

declare dso_local i32 @rdma_ack_cm_event(%struct.rdma_cm_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
