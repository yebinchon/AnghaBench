; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_run_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_run_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.rdma_cm_id = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"cmatose: starting server\0A\00", align 1
@test = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@hints = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cmatose: listen request failed\00", align 1
@src_addr = common dso_local global i32 0, align 4
@dst_addr = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cmatose: getrdmaaddr error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"cmatose: bind address failed\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"cmatose: failure trying to listen\00", align 1
@message_count = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"initiating data transfers\0A\00", align 1
@connections = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"completing sends\0A\00", align 1
@SEND_CQ_INDEX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"receiving data transfers\0A\00", align 1
@RECV_CQ_INDEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"data transfers complete\0A\00", align 1
@migrate = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"cmatose: disconnecting\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 2), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hints, i32 0, i32 0), align 4
  %8 = call i32 @rdma_create_id(i32 %6, %struct.rdma_cm_id** %2, %struct.TYPE_7__* @test, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %1, align 4
  br label %133

14:                                               ; preds = %0
  %15 = load i32, i32* @src_addr, align 4
  %16 = load i32, i32* @dst_addr, align 4
  %17 = load i32, i32* @port, align 4
  %18 = call i32 @get_rdma_addr(i32 %15, i32 %16, i32 %17, %struct.TYPE_9__* @hints, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 1))
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @gai_strerror(i32 %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  br label %129

25:                                               ; preds = %14
  %26 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 1), align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rdma_bind_addr(%struct.rdma_cm_id* %26, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %129

35:                                               ; preds = %25
  %36 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %37 = call i32 @rdma_listen(%struct.rdma_cm_id* %36, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @perror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %129

42:                                               ; preds = %35
  %43 = call i32 (...) @connect_events()
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %129

47:                                               ; preds = %42
  %48 = load i64, i64* @message_count, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %66, %50
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @connections, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 0), align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = call i32 @post_sends(%struct.TYPE_8__* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %129

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %52

69:                                               ; preds = %52
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i32, i32* @SEND_CQ_INDEX, align 4
  %72 = call i32 @poll_cqs(i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %129

76:                                               ; preds = %69
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %78 = load i32, i32* @RECV_CQ_INDEX, align 4
  %79 = call i32 @poll_cqs(i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %129

83:                                               ; preds = %76
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %47
  %86 = load i64, i64* @migrate, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %90 = call i32 @migrate_channel(%struct.rdma_cm_id* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %129

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %85
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %123, %95
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @connections, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %97
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 0), align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  br label %123

110:                                              ; preds = %101
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 0), align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 0), align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @rdma_disconnect(i32 %121)
  br label %123

123:                                              ; preds = %110, %109
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %97

126:                                              ; preds = %97
  %127 = call i32 (...) @disconnect_events()
  store i32 %127, i32* %4, align 4
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %93, %82, %75, %64, %46, %40, %33, %21
  %130 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %131 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %130)
  %132 = load i32, i32* %4, align 4
  store i32 %132, i32* %1, align 4
  br label %133

133:                                              ; preds = %129, %11
  %134 = load i32, i32* %1, align 4
  ret i32 %134
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @rdma_create_id(i32, %struct.rdma_cm_id**, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @get_rdma_addr(i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__**) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @rdma_bind_addr(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @rdma_listen(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @connect_events(...) #1

declare dso_local i32 @post_sends(%struct.TYPE_8__*) #1

declare dso_local i32 @poll_cqs(i32) #1

declare dso_local i32 @migrate_channel(%struct.rdma_cm_id*) #1

declare dso_local i32 @rdma_disconnect(i32) #1

declare dso_local i32 @disconnect_events(...) #1

declare dso_local i32 @rdma_destroy_id(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
