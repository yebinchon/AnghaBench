; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtdelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_16__*)* }
%struct.rt_entry = type { i32, i32 }
%struct.khash = type { i32 }

@TRACEACTIONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"Del\00", align 1
@KS_DELETE = common dso_local global i32 0, align 4
@now = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@need_kern = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@dst_sock = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@mask_sock = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@rhead = common dso_local global %struct.TYPE_16__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"rnh_deladdr() failed\00", align 1
@total_routes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtdelete(%struct.rt_entry* %0) #0 {
  %2 = alloca %struct.rt_entry*, align 8
  %3 = alloca %struct.khash*, align 8
  store %struct.rt_entry* %0, %struct.rt_entry** %2, align 8
  %4 = load i64, i64* @TRACEACTIONS, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.rt_entry*, %struct.rt_entry** %2, align 8
  %8 = call i32 @trace_add_del(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.rt_entry* %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.rt_entry*, %struct.rt_entry** %2, align 8
  %11 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rt_entry*, %struct.rt_entry** %2, align 8
  %14 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.khash* @kern_find(i32 %12, i32 %15, i32 0)
  store %struct.khash* %16, %struct.khash** %3, align 8
  %17 = load %struct.khash*, %struct.khash** %3, align 8
  %18 = icmp ne %struct.khash* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %9
  %20 = load i32, i32* @KS_DELETE, align 4
  %21 = load %struct.khash*, %struct.khash** %3, align 8
  %22 = getelementptr inbounds %struct.khash, %struct.khash* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @now, i32 0, i32 0), align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @need_kern, i32 0, i32 0), align 4
  br label %26

26:                                               ; preds = %19, %9
  %27 = load %struct.rt_entry*, %struct.rt_entry** %2, align 8
  %28 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dst_sock, i32 0, i32 0, i32 0), align 4
  %30 = load %struct.rt_entry*, %struct.rt_entry** %2, align 8
  %31 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @htonl(i32 %32)
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @mask_sock, i32 0, i32 0, i32 0), align 4
  %34 = call i32 @masktrim(%struct.TYPE_15__* @mask_sock)
  %35 = load %struct.rt_entry*, %struct.rt_entry** %2, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rhead, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_16__*)*, i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_16__*)** %37, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rhead, align 8
  %40 = call i64 %38(%struct.TYPE_14__* @dst_sock, %struct.TYPE_15__* @mask_sock, %struct.TYPE_16__* %39)
  %41 = inttoptr i64 %40 to %struct.rt_entry*
  %42 = icmp ne %struct.rt_entry* %35, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %26
  %44 = call i32 @msglog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %50

45:                                               ; preds = %26
  %46 = load %struct.rt_entry*, %struct.rt_entry** %2, align 8
  %47 = call i32 @free(%struct.rt_entry* %46)
  %48 = load i32, i32* @total_routes, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* @total_routes, align 4
  br label %50

50:                                               ; preds = %45, %43
  ret void
}

declare dso_local i32 @trace_add_del(i8*, %struct.rt_entry*) #1

declare dso_local %struct.khash* @kern_find(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @masktrim(%struct.TYPE_15__*) #1

declare dso_local i32 @msglog(i8*) #1

declare dso_local i32 @free(%struct.rt_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
