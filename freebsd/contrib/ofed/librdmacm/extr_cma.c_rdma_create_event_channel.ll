; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_rdma_create_event_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_rdma_create_event_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_event_channel = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"/dev/rdma_cm\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rdma_event_channel* @rdma_create_event_channel() #0 {
  %1 = alloca %struct.rdma_event_channel*, align 8
  %2 = alloca %struct.rdma_event_channel*, align 8
  %3 = call i64 (...) @ucma_init()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.rdma_event_channel* null, %struct.rdma_event_channel** %1, align 8
  br label %28

6:                                                ; preds = %0
  %7 = call %struct.rdma_event_channel* @malloc(i32 8)
  store %struct.rdma_event_channel* %7, %struct.rdma_event_channel** %2, align 8
  %8 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %2, align 8
  %9 = icmp ne %struct.rdma_event_channel* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store %struct.rdma_event_channel* null, %struct.rdma_event_channel** %1, align 8
  br label %28

11:                                               ; preds = %6
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = load i32, i32* @O_CLOEXEC, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %2, align 8
  %17 = getelementptr inbounds %struct.rdma_event_channel, %struct.rdma_event_channel* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %2, align 8
  %19 = getelementptr inbounds %struct.rdma_event_channel, %struct.rdma_event_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %25

23:                                               ; preds = %11
  %24 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %2, align 8
  store %struct.rdma_event_channel* %24, %struct.rdma_event_channel** %1, align 8
  br label %28

25:                                               ; preds = %22
  %26 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %2, align 8
  %27 = call i32 @free(%struct.rdma_event_channel* %26)
  store %struct.rdma_event_channel* null, %struct.rdma_event_channel** %1, align 8
  br label %28

28:                                               ; preds = %25, %23, %10, %5
  %29 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %1, align 8
  ret %struct.rdma_event_channel* %29
}

declare dso_local i64 @ucma_init(...) #1

declare dso_local %struct.rdma_event_channel* @malloc(i32) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @free(%struct.rdma_event_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
