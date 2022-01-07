; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_run_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_run_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"cmatose: starting client\0A\00", align 1
@src_addr = common dso_local global i32 0, align 4
@dst_addr = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@hints = common dso_local global i32 0, align 4
@test = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"cmatose: getaddrinfo error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cmatose: connecting\0A\00", align 1
@connections = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"cmatose: failure getting addr\00", align 1
@message_count = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"receiving data transfers\0A\00", align 1
@RECV_CQ_INDEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"sending replies\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"data transfers complete\0A\00", align 1
@migrate = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_client() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @src_addr, align 4
  %7 = load i32, i32* @dst_addr, align 4
  %8 = load i32, i32* @port, align 4
  %9 = call i32 @get_rdma_addr(i32 %6, i32 %7, i32 %8, i32* @hints, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 1))
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i32, i32* %3, align 4
  %14 = call i8* @gai_strerror(i32 %13)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %1, align 4
  br label %102

17:                                               ; preds = %0
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %44, %17
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @connections, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 0), align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 1), align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 1), align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rdma_resolve_addr(i32 %29, i32 %32, i32 %35, i32 2000)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 (...) @connect_error()
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* %1, align 4
  br label %102

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %19

47:                                               ; preds = %19
  %48 = call i32 (...) @connect_events()
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %93

52:                                               ; preds = %47
  %53 = load i64, i64* @message_count, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @RECV_CQ_INDEX, align 4
  %58 = call i32 @poll_cqs(i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %93

62:                                               ; preds = %55
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %78, %62
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @connections, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 0), align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = call i32 @post_sends(%struct.TYPE_5__* %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %93

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %2, align 4
  br label %64

81:                                               ; preds = %64
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %52
  store i32 0, i32* %3, align 4
  %84 = load i64, i64* @migrate, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = call i32 @migrate_channel(i32* null)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %100

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %83
  br label %93

93:                                               ; preds = %92, %76, %61, %51
  %94 = call i32 (...) @disconnect_events()
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %93
  br label %100

100:                                              ; preds = %99, %90
  %101 = load i32, i32* %3, align 4
  store i32 %101, i32* %1, align 4
  br label %102

102:                                              ; preds = %100, %39, %12
  %103 = load i32, i32* %1, align 4
  ret i32 %103
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @get_rdma_addr(i32, i32, i32, i32*, %struct.TYPE_6__**) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @rdma_resolve_addr(i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @connect_error(...) #1

declare dso_local i32 @connect_events(...) #1

declare dso_local i32 @poll_cqs(i32) #1

declare dso_local i32 @post_sends(%struct.TYPE_5__*) #1

declare dso_local i32 @migrate_channel(i32*) #1

declare dso_local i32 @disconnect_events(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
