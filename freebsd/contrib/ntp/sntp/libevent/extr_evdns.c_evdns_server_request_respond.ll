; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_server_request_respond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_server_request_respond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_request = type { i32 }
%struct.server_request = type { %struct.server_request*, %struct.server_request*, i64, i32, i64, i32, %struct.evdns_server_port* }
%struct.evdns_server_port = type { i32, %struct.server_request*, i32, i64, i32, i32 }
%struct.sockaddr = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@server_port_ready_callback = common dso_local global i32 0, align 4
@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Error from libevent when adding event for DNS server\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdns_server_request_respond(%struct.evdns_server_request* %0, i32 %1) #0 {
  %3 = alloca %struct.evdns_server_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.server_request*, align 8
  %6 = alloca %struct.evdns_server_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.evdns_server_request* %0, %struct.evdns_server_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %10 = call %struct.server_request* @TO_SERVER_REQUEST(%struct.evdns_server_request* %9)
  store %struct.server_request* %10, %struct.server_request** %5, align 8
  %11 = load %struct.server_request*, %struct.server_request** %5, align 8
  %12 = getelementptr inbounds %struct.server_request, %struct.server_request* %11, i32 0, i32 6
  %13 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  store %struct.evdns_server_port* %13, %struct.evdns_server_port** %6, align 8
  store i32 -1, i32* %7, align 4
  %14 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %15 = call i32 @EVDNS_LOCK(%struct.evdns_server_port* %14)
  %16 = load %struct.server_request*, %struct.server_request** %5, align 8
  %17 = getelementptr inbounds %struct.server_request, %struct.server_request* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.server_request*, %struct.server_request** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @evdns_server_request_format_response(%struct.server_request* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %145

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %29 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.server_request*, %struct.server_request** %5, align 8
  %32 = getelementptr inbounds %struct.server_request, %struct.server_request* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.server_request*, %struct.server_request** %5, align 8
  %35 = getelementptr inbounds %struct.server_request, %struct.server_request* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.server_request*, %struct.server_request** %5, align 8
  %39 = getelementptr inbounds %struct.server_request, %struct.server_request* %38, i32 0, i32 3
  %40 = bitcast i32* %39 to %struct.sockaddr*
  %41 = load %struct.server_request*, %struct.server_request** %5, align 8
  %42 = getelementptr inbounds %struct.server_request, %struct.server_request* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @sendto(i32 %30, i32 %33, i32 %37, i32 0, %struct.sockaddr* %40, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %131

48:                                               ; preds = %27
  %49 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %50 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @evutil_socket_geterror(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @EVUTIL_ERR_RW_RETRIABLE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %145

57:                                               ; preds = %48
  %58 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %59 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %58, i32 0, i32 1
  %60 = load %struct.server_request*, %struct.server_request** %59, align 8
  %61 = icmp ne %struct.server_request* %60, null
  br i1 %61, label %62, label %84

62:                                               ; preds = %57
  %63 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %64 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %63, i32 0, i32 1
  %65 = load %struct.server_request*, %struct.server_request** %64, align 8
  %66 = getelementptr inbounds %struct.server_request, %struct.server_request* %65, i32 0, i32 1
  %67 = load %struct.server_request*, %struct.server_request** %66, align 8
  %68 = load %struct.server_request*, %struct.server_request** %5, align 8
  %69 = getelementptr inbounds %struct.server_request, %struct.server_request* %68, i32 0, i32 1
  store %struct.server_request* %67, %struct.server_request** %69, align 8
  %70 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %71 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %70, i32 0, i32 1
  %72 = load %struct.server_request*, %struct.server_request** %71, align 8
  %73 = load %struct.server_request*, %struct.server_request** %5, align 8
  %74 = getelementptr inbounds %struct.server_request, %struct.server_request* %73, i32 0, i32 0
  store %struct.server_request* %72, %struct.server_request** %74, align 8
  %75 = load %struct.server_request*, %struct.server_request** %5, align 8
  %76 = load %struct.server_request*, %struct.server_request** %5, align 8
  %77 = getelementptr inbounds %struct.server_request, %struct.server_request* %76, i32 0, i32 0
  %78 = load %struct.server_request*, %struct.server_request** %77, align 8
  %79 = getelementptr inbounds %struct.server_request, %struct.server_request* %78, i32 0, i32 1
  store %struct.server_request* %75, %struct.server_request** %79, align 8
  %80 = load %struct.server_request*, %struct.server_request** %5, align 8
  %81 = getelementptr inbounds %struct.server_request, %struct.server_request* %80, i32 0, i32 1
  %82 = load %struct.server_request*, %struct.server_request** %81, align 8
  %83 = getelementptr inbounds %struct.server_request, %struct.server_request* %82, i32 0, i32 0
  store %struct.server_request* %75, %struct.server_request** %83, align 8
  br label %130

84:                                               ; preds = %57
  %85 = load %struct.server_request*, %struct.server_request** %5, align 8
  %86 = load %struct.server_request*, %struct.server_request** %5, align 8
  %87 = getelementptr inbounds %struct.server_request, %struct.server_request* %86, i32 0, i32 0
  store %struct.server_request* %85, %struct.server_request** %87, align 8
  %88 = load %struct.server_request*, %struct.server_request** %5, align 8
  %89 = getelementptr inbounds %struct.server_request, %struct.server_request* %88, i32 0, i32 1
  store %struct.server_request* %85, %struct.server_request** %89, align 8
  %90 = load %struct.server_request*, %struct.server_request** %5, align 8
  %91 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %92 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %91, i32 0, i32 1
  store %struct.server_request* %90, %struct.server_request** %92, align 8
  %93 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %94 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %96 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %95, i32 0, i32 2
  %97 = call i32 @event_del(i32* %96)
  %98 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %99 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %98, i32 0, i32 2
  %100 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %101 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %104 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %107 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %84
  br label %113

111:                                              ; preds = %84
  %112 = load i32, i32* @EV_READ, align 4
  br label %113

113:                                              ; preds = %111, %110
  %114 = phi i32 [ 0, %110 ], [ %112, %111 ]
  %115 = load i32, i32* @EV_WRITE, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @EV_PERSIST, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @server_port_ready_callback, align 4
  %120 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %121 = call i32 @event_assign(i32* %99, i32 %102, i32 %105, i32 %118, i32 %119, %struct.evdns_server_port* %120)
  %122 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %123 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %122, i32 0, i32 2
  %124 = call i64 @event_add(i32* %123, i32* null)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %113
  %127 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %128 = call i32 @log(i32 %127, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %113
  br label %130

130:                                              ; preds = %129, %62
  store i32 1, i32* %7, align 4
  br label %145

131:                                              ; preds = %27
  %132 = load %struct.server_request*, %struct.server_request** %5, align 8
  %133 = call i64 @server_request_free(%struct.server_request* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 0, i32* %7, align 4
  br label %145

136:                                              ; preds = %131
  %137 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %138 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %137, i32 0, i32 1
  %139 = load %struct.server_request*, %struct.server_request** %138, align 8
  %140 = icmp ne %struct.server_request* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %143 = call i32 @server_port_flush(%struct.evdns_server_port* %142)
  br label %144

144:                                              ; preds = %141, %136
  store i32 0, i32* %7, align 4
  br label %145

145:                                              ; preds = %144, %135, %130, %56, %25
  %146 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  %147 = call i32 @EVDNS_UNLOCK(%struct.evdns_server_port* %146)
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local %struct.server_request* @TO_SERVER_REQUEST(%struct.evdns_server_request*) #1

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_server_port*) #1

declare dso_local i32 @evdns_server_request_format_response(%struct.server_request*, i32) #1

declare dso_local i32 @sendto(i32, i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @evutil_socket_geterror(i32) #1

declare dso_local i64 @EVUTIL_ERR_RW_RETRIABLE(i32) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_assign(i32*, i32, i32, i32, i32, %struct.evdns_server_port*) #1

declare dso_local i64 @event_add(i32*, i32*) #1

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i64 @server_request_free(%struct.server_request*) #1

declare dso_local i32 @server_port_flush(%struct.evdns_server_port*) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_server_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
