; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_run_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_run_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.rdma_cm_id = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"udaddy: starting server\0A\00", align 1
@test = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@hints = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"udaddy: listen request failed\00", align 1
@src_addr = common dso_local global i32 0, align 4
@dst_addr = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"udaddy: getrdmaaddr error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"udaddy: bind address failed\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"udaddy: failure trying to listen\00", align 1
@message_count = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"receiving data transfers\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"sending replies\0A\00", align 1
@connections = common dso_local global i32 0, align 4
@IBV_SEND_SIGNALED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"data transfers complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 2), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hints, i32 0, i32 0), align 4
  %8 = call i32 @rdma_create_id(i32 %6, %struct.rdma_cm_id** %2, %struct.TYPE_6__* @test, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %1, align 4
  br label %84

14:                                               ; preds = %0
  %15 = load i32, i32* @src_addr, align 4
  %16 = load i32, i32* @dst_addr, align 4
  %17 = load i32, i32* @port, align 4
  %18 = call i32 @get_rdma_addr(i32 %15, i32 %16, i32 %17, %struct.TYPE_7__* @hints, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 1))
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @gai_strerror(i32 %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  br label %80

25:                                               ; preds = %14
  %26 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 1), align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rdma_bind_addr(%struct.rdma_cm_id* %26, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %80

35:                                               ; preds = %25
  %36 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %37 = call i32 @rdma_listen(%struct.rdma_cm_id* %36, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %80

42:                                               ; preds = %35
  %43 = call i32 (...) @connect_events()
  %44 = load i64, i64* @message_count, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %48 = call i32 (...) @poll_cqs()
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %80

52:                                               ; preds = %46
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %69, %52
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @connections, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 0), align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* @IBV_SEND_SIGNALED, align 4
  %64 = call i32 @post_sends(i32* %62, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %80

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %54

72:                                               ; preds = %54
  %73 = call i32 (...) @poll_cqs()
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %80

77:                                               ; preds = %72
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %42
  br label %80

80:                                               ; preds = %79, %76, %67, %51, %40, %33, %21
  %81 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %82 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %81)
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %1, align 4
  br label %84

84:                                               ; preds = %80, %11
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @rdma_create_id(i32, %struct.rdma_cm_id**, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @get_rdma_addr(i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__**) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @rdma_bind_addr(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @rdma_listen(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @connect_events(...) #1

declare dso_local i32 @poll_cqs(...) #1

declare dso_local i32 @post_sends(i32*, i32) #1

declare dso_local i32 @rdma_destroy_id(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
