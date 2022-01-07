; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_alloc_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_alloc_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@connections = common dso_local global i32 0, align 4
@nodes = common dso_local global %struct.TYPE_8__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"creating id\0A\00", align 1
@STEP_CREATE_ID = common dso_local global i32 0, align 4
@dst_addr = common dso_local global i64 0, align 8
@channel = common dso_local global i32 0, align 4
@hints = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @alloc_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_nodes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @connections, align 4
  %5 = call %struct.TYPE_8__* @calloc(i32 4, i32 %4)
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** @nodes, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %7 = icmp ne %struct.TYPE_8__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %75

11:                                               ; preds = %0
  %12 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @STEP_CREATE_ID, align 4
  %14 = call i32 @start_time(i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %52, %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @connections, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = load i32, i32* @STEP_CREATE_ID, align 4
  %25 = call i32 @start_perf(%struct.TYPE_8__* %23, i32 %24)
  %26 = load i64, i64* @dst_addr, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %19
  %29 = load i32, i32* @channel, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %37
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hints, i32 0, i32 0), align 4
  %40 = call i32 @rdma_create_id(i32 %29, i32* %34, %struct.TYPE_8__* %38, i32 %39)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %58

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %19
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = load i32, i32* @STEP_CREATE_ID, align 4
  %51 = call i32 @end_perf(%struct.TYPE_8__* %49, i32 %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %15

55:                                               ; preds = %15
  %56 = load i32, i32* @STEP_CREATE_ID, align 4
  %57 = call i32 @end_time(i32 %56)
  store i32 0, i32* %1, align 4
  br label %75

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %63, %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %3, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rdma_destroy_id(i32 %69)
  br label %59

71:                                               ; preds = %59
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nodes, align 8
  %73 = call i32 @free(%struct.TYPE_8__* %72)
  %74 = load i32, i32* %2, align 4
  store i32 %74, i32* %1, align 4
  br label %75

75:                                               ; preds = %71, %55, %8
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @start_time(i32) #1

declare dso_local i32 @start_perf(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rdma_create_id(i32, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @end_perf(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @end_time(i32) #1

declare dso_local i32 @rdma_destroy_id(i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
