; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@RDMA_PS_TCP = common dso_local global i32 0, align 4
@hints = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@IBV_QPT_RC = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"s:b:c:p:r:t:\00", align 1
@optarg = common dso_local global i8* null, align 8
@dst_addr = common dso_local global i8* null, align 8
@src_addr = common dso_local global i8* null, align 8
@connections = common dso_local global i8* null, align 8
@port = common dso_local global i8* null, align 8
@retries = common dso_local global i8* null, align 8
@timeout = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"usage: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"\09[-s server_address]\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\09[-b bind_address]\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\09[-c connections]\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\09[-p port_number]\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\09[-r retries]\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"\09[-t timeout_ms]\0A\00", align 1
@init_qp_attr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@channel = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to create event channel\0A\00", align 1
@RAI_PASSIVE = common dso_local global i32 0, align 4
@rai = common dso_local global i64 0, align 8
@nodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @RDMA_PS_TCP, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hints, i32 0, i32 2), align 8
  %9 = load i8*, i8** @IBV_QPT_RC, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hints, i32 0, i32 1), align 8
  br label %10

10:                                               ; preds = %44, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %45

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %32 [
    i32 115, label %17
    i32 98, label %19
    i32 99, label %21
    i32 112, label %24
    i32 114, label %26
    i32 116, label %29
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @optarg, align 8
  store i8* %18, i8** @dst_addr, align 8
  br label %44

19:                                               ; preds = %15
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** @src_addr, align 8
  br label %44

21:                                               ; preds = %15
  %22 = load i8*, i8** @optarg, align 8
  %23 = call i8* @atoi(i8* %22)
  store i8* %23, i8** @connections, align 8
  br label %44

24:                                               ; preds = %15
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** @port, align 8
  br label %44

26:                                               ; preds = %15
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i8* @atoi(i8* %27)
  store i8* %28, i8** @retries, align 8
  br label %44

29:                                               ; preds = %15
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i8* @atoi(i8* %30)
  store i8* %31, i8** @timeout, align 8
  br label %44

32:                                               ; preds = %15
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %29, %26, %24, %21, %19, %17
  br label %10

45:                                               ; preds = %10
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @init_qp_attr, i32 0, i32 1, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @init_qp_attr, i32 0, i32 1, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @init_qp_attr, i32 0, i32 1, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @init_qp_attr, i32 0, i32 1, i32 3), align 4
  %46 = load i8*, i8** @IBV_QPT_RC, align 8
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @init_qp_attr, i32 0, i32 0), align 8
  %47 = call i32 (...) @rdma_create_event_channel()
  store i32 %47, i32* @channel, align 4
  %48 = load i32, i32* @channel, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %52 = call i32 @exit(i32 1) #3
  unreachable

53:                                               ; preds = %45
  %54 = load i8*, i8** @dst_addr, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call i32 (...) @alloc_nodes()
  %58 = call i32 (...) @run_client()
  store i32 %58, i32* %7, align 4
  br label %64

59:                                               ; preds = %53
  %60 = load i32, i32* @RAI_PASSIVE, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hints, i32 0, i32 0), align 8
  %62 = or i32 %61, %60
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hints, i32 0, i32 0), align 8
  %63 = call i32 (...) @run_server()
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %59, %56
  %65 = call i32 (...) @cleanup_nodes()
  %66 = load i32, i32* @channel, align 4
  %67 = call i32 @rdma_destroy_event_channel(i32 %66)
  %68 = load i64, i64* @rai, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i64, i64* @rai, align 8
  %72 = call i32 @rdma_freeaddrinfo(i64 %71)
  br label %73

73:                                               ; preds = %70, %64
  %74 = call i32 (...) @show_perf()
  %75 = load i32, i32* @nodes, align 4
  %76 = call i32 @free(i32 %75)
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @rdma_create_event_channel(...) #1

declare dso_local i32 @alloc_nodes(...) #1

declare dso_local i32 @run_client(...) #1

declare dso_local i32 @run_server(...) #1

declare dso_local i32 @cleanup_nodes(...) #1

declare dso_local i32 @rdma_destroy_event_channel(i32) #1

declare dso_local i32 @rdma_freeaddrinfo(i64) #1

declare dso_local i32 @show_perf(...) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
