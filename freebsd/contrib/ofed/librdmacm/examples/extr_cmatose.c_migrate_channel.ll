; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_migrate_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_migrate_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.rdma_event_channel*, %struct.TYPE_3__* }
%struct.rdma_event_channel = type { i32 }
%struct.TYPE_3__ = type { %struct.rdma_cm_id* }
%struct.rdma_cm_id = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"migrating to new event channel\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"cmatose: failed to create event channel\00", align 1
@connections = common dso_local global i32 0, align 4
@test = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"cmatose: failure migrating to channel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*)* @migrate_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @migrate_channel(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_event_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  %7 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %8 = call %struct.rdma_event_channel* (...) @rdma_create_event_channel()
  store %struct.rdma_event_channel* %8, %struct.rdma_event_channel** %4, align 8
  %9 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %4, align 8
  %10 = icmp ne %struct.rdma_event_channel* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %54

13:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %14 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %15 = icmp ne %struct.rdma_cm_id* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %18 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %4, align 8
  %19 = call i32 @rdma_migrate_id(%struct.rdma_cm_id* %17, %struct.rdma_event_channel* %18)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %13
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @connections, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 1), align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %36, align 8
  %38 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %4, align 8
  %39 = call i32 @rdma_migrate_id(%struct.rdma_cm_id* %37, %struct.rdma_event_channel* %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %21

43:                                               ; preds = %29
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 0), align 8
  %48 = call i32 @rdma_destroy_event_channel(%struct.rdma_event_channel* %47)
  %49 = load %struct.rdma_event_channel*, %struct.rdma_event_channel** %4, align 8
  store %struct.rdma_event_channel* %49, %struct.rdma_event_channel** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 0), align 8
  br label %52

50:                                               ; preds = %43
  %51 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.rdma_event_channel* @rdma_create_event_channel(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rdma_migrate_id(%struct.rdma_cm_id*, %struct.rdma_event_channel*) #1

declare dso_local i32 @rdma_destroy_event_channel(%struct.rdma_event_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
