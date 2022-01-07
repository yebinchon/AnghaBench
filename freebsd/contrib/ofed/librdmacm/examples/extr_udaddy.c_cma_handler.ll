; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_cma_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_cma_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32 }
%struct.rdma_cm_event = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"udaddy: event: %s, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @cma_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %7 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %42 [
    i32 136, label %9
    i32 129, label %14
    i32 134, label %19
    i32 132, label %22
    i32 137, label %28
    i32 130, label %28
    i32 135, label %28
    i32 128, label %28
    i32 131, label %28
    i32 133, label %41
  ]

9:                                                ; preds = %2
  %10 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %11 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @addr_handler(i32 %12)
  store i32 %13, i32* %5, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %16 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @route_handler(i32 %17)
  store i32 %18, i32* %5, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %21 = call i32 @connect_handler(%struct.rdma_cm_id* %20)
  store i32 %21, i32* %5, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %24 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %27 = call i32 @resolved_handler(i32 %25, %struct.rdma_cm_event* %26)
  store i32 %27, i32* %5, align 4
  br label %43

28:                                               ; preds = %2, %2, %2, %2, %2
  %29 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %30 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @rdma_event_str(i32 %31)
  %33 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %34 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35)
  %37 = call i32 (...) @connect_error()
  %38 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %39 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  br label %43

41:                                               ; preds = %2
  br label %43

42:                                               ; preds = %2
  br label %43

43:                                               ; preds = %42, %41, %28, %22, %19, %14, %9
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @addr_handler(i32) #1

declare dso_local i32 @route_handler(i32) #1

declare dso_local i32 @connect_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @resolved_handler(i32, %struct.rdma_cm_event*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @rdma_event_str(i32) #1

declare dso_local i32 @connect_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
