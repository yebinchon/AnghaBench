; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_reply_and_prefetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_reply_and_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.query_info = type { i32 }
%struct.comm_reply = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@PREFETCH_EXPIRY_ADD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker*, %struct.query_info*, i32, %struct.comm_reply*, i64)* @reply_and_prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reply_and_prefetch(%struct.worker* %0, %struct.query_info* %1, i32 %2, %struct.comm_reply* %3, i64 %4) #0 {
  %6 = alloca %struct.worker*, align 8
  %7 = alloca %struct.query_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.comm_reply*, align 8
  %10 = alloca i64, align 8
  store %struct.worker* %0, %struct.worker** %6, align 8
  store %struct.query_info* %1, %struct.query_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.comm_reply* %3, %struct.comm_reply** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %12 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @sldns_buffer_limit(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %5
  %19 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %20 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %27 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %34 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sldns_buffer_copy(i32 %32, i32 %37)
  br label %39

39:                                               ; preds = %25, %18
  %40 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %41 = call i32 @comm_point_send_reply(%struct.comm_reply* %40)
  br label %42

42:                                               ; preds = %39, %5
  %43 = load %struct.worker*, %struct.worker** %6, align 8
  %44 = getelementptr inbounds %struct.worker, %struct.worker* %43, i32 0, i32 1
  %45 = load %struct.worker*, %struct.worker** %6, align 8
  %46 = call i32 @server_stats_prefetch(i32* %44, %struct.worker* %45)
  %47 = load %struct.worker*, %struct.worker** %6, align 8
  %48 = getelementptr inbounds %struct.worker, %struct.worker* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.query_info*, %struct.query_info** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @PREFETCH_EXPIRY_ADD, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @mesh_new_prefetch(i32 %50, %struct.query_info* %51, i32 %52, i64 %55)
  ret void
}

declare dso_local i64 @sldns_buffer_limit(i32) #1

declare dso_local i32 @sldns_buffer_copy(i32, i32) #1

declare dso_local i32 @comm_point_send_reply(%struct.comm_reply*) #1

declare dso_local i32 @server_stats_prefetch(i32*, %struct.worker*) #1

declare dso_local i32 @mesh_new_prefetch(i32, %struct.query_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
