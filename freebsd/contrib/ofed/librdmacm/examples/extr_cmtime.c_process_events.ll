; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_process_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_event = type { i32 }

@channel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"failure in rdma_get_cm_event in process_server_events\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @process_events(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rdma_cm_event*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load i32, i32* @channel, align 4
  %11 = call i32 @rdma_get_cm_event(i32 %10, %struct.rdma_cm_event** %3)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %3, align 8
  %16 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %3, align 8
  %19 = call i32 @cma_handler(i32 %17, %struct.rdma_cm_event* %18)
  br label %23

20:                                               ; preds = %9
  %21 = call i32 @perror(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %14
  br label %5

24:                                               ; preds = %5
  ret i8* null
}

declare dso_local i32 @rdma_get_cm_event(i32, %struct.rdma_cm_event**) #1

declare dso_local i32 @cma_handler(i32, %struct.rdma_cm_event*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
