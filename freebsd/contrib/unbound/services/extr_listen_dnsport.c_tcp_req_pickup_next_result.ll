; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_pickup_next_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_pickup_next_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_req_info = type { i64 }
%struct.tcp_req_done_item = type { %struct.tcp_req_done_item*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_req_info*)* @tcp_req_pickup_next_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_req_pickup_next_result(%struct.tcp_req_info* %0) #0 {
  %2 = alloca %struct.tcp_req_info*, align 8
  %3 = alloca %struct.tcp_req_done_item*, align 8
  store %struct.tcp_req_info* %0, %struct.tcp_req_info** %2, align 8
  %4 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %5 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %10 = call %struct.tcp_req_done_item* @tcp_req_info_pop_done(%struct.tcp_req_info* %9)
  store %struct.tcp_req_done_item* %10, %struct.tcp_req_done_item** %3, align 8
  %11 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %12 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %3, align 8
  %13 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %12, i32 0, i32 0
  %14 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %13, align 8
  %15 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %3, align 8
  %16 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @tcp_req_info_start_write_buf(%struct.tcp_req_info* %11, %struct.tcp_req_done_item* %14, i32 %17)
  %19 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %3, align 8
  %20 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %19, i32 0, i32 0
  %21 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %20, align 8
  %22 = call i32 @free(%struct.tcp_req_done_item* %21)
  %23 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %3, align 8
  %24 = call i32 @free(%struct.tcp_req_done_item* %23)
  br label %25

25:                                               ; preds = %8, %1
  ret void
}

declare dso_local %struct.tcp_req_done_item* @tcp_req_info_pop_done(%struct.tcp_req_info*) #1

declare dso_local i32 @tcp_req_info_start_write_buf(%struct.tcp_req_info*, %struct.tcp_req_done_item*, i32) #1

declare dso_local i32 @free(%struct.tcp_req_done_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
