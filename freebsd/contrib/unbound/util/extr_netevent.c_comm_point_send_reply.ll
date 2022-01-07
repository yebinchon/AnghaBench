; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_send_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_reply = type { %struct.TYPE_8__*, i32, i32, i64 }
%struct.TYPE_8__ = type { i64, i32, i64, %struct.sldns_buffer*, %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.sldns_buffer* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.sldns_buffer = type { i32 }
%struct.sockaddr = type { i32 }

@comm_udp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_point_send_reply(%struct.comm_reply* %0) #0 {
  %2 = alloca %struct.comm_reply*, align 8
  %3 = alloca %struct.sldns_buffer*, align 8
  store %struct.comm_reply* %0, %struct.comm_reply** %2, align 8
  %4 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %5 = icmp ne %struct.comm_reply* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %8 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ false, %1 ], [ %10, %6 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @log_assert(i32 %13)
  %15 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %16 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load %struct.sldns_buffer*, %struct.sldns_buffer** %18, align 8
  store %struct.sldns_buffer* %19, %struct.sldns_buffer** %3, align 8
  %20 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %21 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @comm_udp, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %11
  %28 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %29 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %34 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load %struct.sldns_buffer*, %struct.sldns_buffer** %3, align 8
  %37 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %38 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %37, i32 0, i32 1
  %39 = bitcast i32* %38 to %struct.sockaddr*
  %40 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %41 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %44 = call i32 @comm_point_send_udp_msg_if(%struct.TYPE_8__* %35, %struct.sldns_buffer* %36, %struct.sockaddr* %39, i32 %42, %struct.comm_reply* %43)
  br label %57

45:                                               ; preds = %27
  %46 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %47 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load %struct.sldns_buffer*, %struct.sldns_buffer** %3, align 8
  %50 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %51 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %50, i32 0, i32 1
  %52 = bitcast i32* %51 to %struct.sockaddr*
  %53 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %54 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @comm_point_send_udp_msg(%struct.TYPE_8__* %48, %struct.sldns_buffer* %49, %struct.sockaddr* %52, i32 %55)
  br label %57

57:                                               ; preds = %45, %32
  br label %83

58:                                               ; preds = %11
  %59 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %60 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %67 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @tcp_req_info_send_reply(i64 %70)
  br label %82

72:                                               ; preds = %58
  %73 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %74 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %77 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @comm_point_start_listening(%struct.TYPE_8__* %75, i32 -1, i32 %80)
  br label %82

82:                                               ; preds = %72, %65
  br label %83

83:                                               ; preds = %82, %57
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @comm_point_send_udp_msg_if(%struct.TYPE_8__*, %struct.sldns_buffer*, %struct.sockaddr*, i32, %struct.comm_reply*) #1

declare dso_local i32 @comm_point_send_udp_msg(%struct.TYPE_8__*, %struct.sldns_buffer*, %struct.sockaddr*, i32) #1

declare dso_local i32 @tcp_req_info_send_reply(i64) #1

declare dso_local i32 @comm_point_start_listening(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
