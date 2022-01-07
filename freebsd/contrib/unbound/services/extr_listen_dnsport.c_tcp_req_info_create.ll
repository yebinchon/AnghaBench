; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_req_info = type { %struct.sldns_buffer* }
%struct.sldns_buffer = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"malloc failure for new stream outoforder processing structure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcp_req_info* @tcp_req_info_create(%struct.sldns_buffer* %0) #0 {
  %2 = alloca %struct.tcp_req_info*, align 8
  %3 = alloca %struct.sldns_buffer*, align 8
  %4 = alloca %struct.tcp_req_info*, align 8
  store %struct.sldns_buffer* %0, %struct.sldns_buffer** %3, align 8
  %5 = call i64 @malloc(i32 8)
  %6 = inttoptr i64 %5 to %struct.tcp_req_info*
  store %struct.tcp_req_info* %6, %struct.tcp_req_info** %4, align 8
  %7 = load %struct.tcp_req_info*, %struct.tcp_req_info** %4, align 8
  %8 = icmp ne %struct.tcp_req_info* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @log_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store %struct.tcp_req_info* null, %struct.tcp_req_info** %2, align 8
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.tcp_req_info*, %struct.tcp_req_info** %4, align 8
  %13 = call i32 @memset(%struct.tcp_req_info* %12, i32 0, i32 8)
  %14 = load %struct.sldns_buffer*, %struct.sldns_buffer** %3, align 8
  %15 = load %struct.tcp_req_info*, %struct.tcp_req_info** %4, align 8
  %16 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %15, i32 0, i32 0
  store %struct.sldns_buffer* %14, %struct.sldns_buffer** %16, align 8
  %17 = load %struct.tcp_req_info*, %struct.tcp_req_info** %4, align 8
  store %struct.tcp_req_info* %17, %struct.tcp_req_info** %2, align 8
  br label %18

18:                                               ; preds = %11, %9
  %19 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  ret %struct.tcp_req_info* %19
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @memset(%struct.tcp_req_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
