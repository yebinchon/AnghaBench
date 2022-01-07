; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_pop_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_pop_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_req_done_item = type { %struct.tcp_req_done_item*, i64 }
%struct.tcp_req_info = type { i64, %struct.tcp_req_done_item* }

@stream_wait_count_lock = common dso_local global i32 0, align 4
@stream_wait_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcp_req_done_item* (%struct.tcp_req_info*)* @tcp_req_info_pop_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcp_req_done_item* @tcp_req_info_pop_done(%struct.tcp_req_info* %0) #0 {
  %2 = alloca %struct.tcp_req_info*, align 8
  %3 = alloca %struct.tcp_req_done_item*, align 8
  store %struct.tcp_req_info* %0, %struct.tcp_req_info** %2, align 8
  %4 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %5 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %10 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %9, i32 0, i32 1
  %11 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %10, align 8
  %12 = icmp ne %struct.tcp_req_done_item* %11, null
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i1 [ false, %1 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @log_assert(i32 %15)
  %17 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %18 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %17, i32 0, i32 1
  %19 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %18, align 8
  store %struct.tcp_req_done_item* %19, %struct.tcp_req_done_item** %3, align 8
  %20 = call i32 @lock_basic_lock(i32* @stream_wait_count_lock)
  %21 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add i64 16, %23
  %25 = load i32, i32* @stream_wait_count, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* @stream_wait_count, align 4
  %29 = call i32 @lock_basic_unlock(i32* @stream_wait_count_lock)
  %30 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %31 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %30, i32 0, i32 1
  %32 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %31, align 8
  %33 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %32, i32 0, i32 0
  %34 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %33, align 8
  %35 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %36 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %35, i32 0, i32 1
  store %struct.tcp_req_done_item* %34, %struct.tcp_req_done_item** %36, align 8
  %37 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %38 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %3, align 8
  ret %struct.tcp_req_done_item* %41
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
