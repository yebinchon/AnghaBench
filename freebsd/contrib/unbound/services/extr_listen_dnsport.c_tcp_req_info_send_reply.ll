; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_send_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_req_info = type { i32, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i64, i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_req_info_send_reply(%struct.tcp_req_info* %0) #0 {
  %2 = alloca %struct.tcp_req_info*, align 8
  store %struct.tcp_req_info* %0, %struct.tcp_req_info** %2, align 8
  %3 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %4 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %9 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @sldns_buffer_clear(i32 %12)
  %14 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %15 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %20 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sldns_buffer_begin(i32 %21)
  %23 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %24 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sldns_buffer_limit(i32 %25)
  %27 = call i32 @sldns_buffer_write(i32 %18, i32 %22, i32 %26)
  %28 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %29 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sldns_buffer_flip(i32 %32)
  %34 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %35 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %92

36:                                               ; preds = %1
  %37 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %38 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %36
  %44 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %45 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %43
  %51 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %52 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %53 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @sldns_buffer_begin(i32 %54)
  %56 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %57 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sldns_buffer_limit(i32 %58)
  %60 = call i32 @tcp_req_info_start_write_buf(%struct.tcp_req_info* %51, i32 %55, i32 %59)
  %61 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %62 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = call i32 @comm_point_stop_listening(%struct.TYPE_3__* %63)
  %65 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %66 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %69 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @comm_point_start_listening(%struct.TYPE_3__* %67, i32 -1, i32 %72)
  br label %92

74:                                               ; preds = %43, %36
  %75 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %76 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %77 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @sldns_buffer_begin(i32 %78)
  %80 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %81 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @sldns_buffer_limit(i32 %82)
  %84 = call i32 @tcp_req_info_add_result(%struct.tcp_req_info* %75, i32 %79, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %74
  %87 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %88 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = call i32 @comm_point_drop_reply(i32* %90)
  br label %92

92:                                               ; preds = %7, %50, %86, %74
  ret void
}

declare dso_local i32 @sldns_buffer_clear(i32) #1

declare dso_local i32 @sldns_buffer_write(i32, i32, i32) #1

declare dso_local i32 @sldns_buffer_begin(i32) #1

declare dso_local i32 @sldns_buffer_limit(i32) #1

declare dso_local i32 @sldns_buffer_flip(i32) #1

declare dso_local i32 @tcp_req_info_start_write_buf(%struct.tcp_req_info*, i32, i32) #1

declare dso_local i32 @comm_point_stop_listening(%struct.TYPE_3__*) #1

declare dso_local i32 @comm_point_start_listening(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @tcp_req_info_add_result(%struct.tcp_req_info*, i32, i32) #1

declare dso_local i32 @comm_point_drop_reply(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
