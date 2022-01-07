; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_tcp_req_info_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_req_info = type { i64, i64, %struct.tcp_req_open_item*, i64, %struct.tcp_req_open_item*, i32 }
%struct.tcp_req_open_item = type { %struct.tcp_req_open_item*, i64, %struct.tcp_req_open_item*, i32, i32 }
%struct.tcp_req_done_item = type { %struct.tcp_req_done_item*, i64, %struct.tcp_req_done_item*, i32, i32 }

@stream_wait_count_lock = common dso_local global i32 0, align 4
@stream_wait_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_req_info_clear(%struct.tcp_req_info* %0) #0 {
  %2 = alloca %struct.tcp_req_info*, align 8
  %3 = alloca %struct.tcp_req_open_item*, align 8
  %4 = alloca %struct.tcp_req_open_item*, align 8
  %5 = alloca %struct.tcp_req_done_item*, align 8
  %6 = alloca %struct.tcp_req_done_item*, align 8
  store %struct.tcp_req_info* %0, %struct.tcp_req_info** %2, align 8
  %7 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %8 = icmp ne %struct.tcp_req_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %76

10:                                               ; preds = %1
  %11 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %12 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %11, i32 0, i32 4
  %13 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %12, align 8
  store %struct.tcp_req_open_item* %13, %struct.tcp_req_open_item** %3, align 8
  br label %14

14:                                               ; preds = %17, %10
  %15 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %3, align 8
  %16 = icmp ne %struct.tcp_req_open_item* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %3, align 8
  %19 = getelementptr inbounds %struct.tcp_req_open_item, %struct.tcp_req_open_item* %18, i32 0, i32 2
  %20 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %19, align 8
  store %struct.tcp_req_open_item* %20, %struct.tcp_req_open_item** %4, align 8
  %21 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_req_open_item, %struct.tcp_req_open_item* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %3, align 8
  %25 = getelementptr inbounds %struct.tcp_req_open_item, %struct.tcp_req_open_item* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %28 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mesh_state_remove_reply(i32 %23, i32 %26, i32 %29)
  %31 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %3, align 8
  %32 = call i32 @free(%struct.tcp_req_open_item* %31)
  %33 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %4, align 8
  store %struct.tcp_req_open_item* %33, %struct.tcp_req_open_item** %3, align 8
  br label %14

34:                                               ; preds = %14
  %35 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %36 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %35, i32 0, i32 4
  store %struct.tcp_req_open_item* null, %struct.tcp_req_open_item** %36, align 8
  %37 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %38 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %40 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %39, i32 0, i32 2
  %41 = load %struct.tcp_req_open_item*, %struct.tcp_req_open_item** %40, align 8
  %42 = bitcast %struct.tcp_req_open_item* %41 to %struct.tcp_req_done_item*
  store %struct.tcp_req_done_item* %42, %struct.tcp_req_done_item** %5, align 8
  br label %43

43:                                               ; preds = %46, %34
  %44 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %5, align 8
  %45 = icmp ne %struct.tcp_req_done_item* %44, null
  br i1 %45, label %46, label %69

46:                                               ; preds = %43
  %47 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %5, align 8
  %48 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %47, i32 0, i32 2
  %49 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %48, align 8
  store %struct.tcp_req_done_item* %49, %struct.tcp_req_done_item** %6, align 8
  %50 = call i32 @lock_basic_lock(i32* @stream_wait_count_lock)
  %51 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %5, align 8
  %52 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add i64 32, %53
  %55 = load i32, i32* @stream_wait_count, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* @stream_wait_count, align 4
  %59 = call i32 @lock_basic_unlock(i32* @stream_wait_count_lock)
  %60 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %5, align 8
  %61 = getelementptr inbounds %struct.tcp_req_done_item, %struct.tcp_req_done_item* %60, i32 0, i32 0
  %62 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %61, align 8
  %63 = bitcast %struct.tcp_req_done_item* %62 to %struct.tcp_req_open_item*
  %64 = call i32 @free(%struct.tcp_req_open_item* %63)
  %65 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %5, align 8
  %66 = bitcast %struct.tcp_req_done_item* %65 to %struct.tcp_req_open_item*
  %67 = call i32 @free(%struct.tcp_req_open_item* %66)
  %68 = load %struct.tcp_req_done_item*, %struct.tcp_req_done_item** %6, align 8
  store %struct.tcp_req_done_item* %68, %struct.tcp_req_done_item** %5, align 8
  br label %43

69:                                               ; preds = %43
  %70 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %71 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %70, i32 0, i32 2
  store %struct.tcp_req_open_item* null, %struct.tcp_req_open_item** %71, align 8
  %72 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %73 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.tcp_req_info*, %struct.tcp_req_info** %2, align 8
  %75 = getelementptr inbounds %struct.tcp_req_info, %struct.tcp_req_info* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %69, %9
  ret void
}

declare dso_local i32 @mesh_state_remove_reply(i32, i32, i32) #1

declare dso_local i32 @free(%struct.tcp_req_open_item*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
