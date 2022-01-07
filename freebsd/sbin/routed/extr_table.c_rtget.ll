; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_14__*)* }
%struct.rt_entry = type { i64, i64 }

@dst_sock = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@mask_sock = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@rhead = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rt_entry* @rtget(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.rt_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rt_entry*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dst_sock, i32 0, i32 0, i32 0), align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @htonl(i64 %8)
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @mask_sock, i32 0, i32 0, i32 0), align 4
  %10 = call i32 @masktrim(%struct.TYPE_13__* @mask_sock)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** @rhead, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_14__*)*, i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_14__*)** %12, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @rhead, align 8
  %15 = call i64 %13(%struct.TYPE_12__* @dst_sock, %struct.TYPE_13__* @mask_sock, %struct.TYPE_14__* %14)
  %16 = inttoptr i64 %15 to %struct.rt_entry*
  store %struct.rt_entry* %16, %struct.rt_entry** %6, align 8
  %17 = load %struct.rt_entry*, %struct.rt_entry** %6, align 8
  %18 = icmp ne %struct.rt_entry* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.rt_entry*, %struct.rt_entry** %6, align 8
  %21 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.rt_entry*, %struct.rt_entry** %6, align 8
  %27 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19, %2
  store %struct.rt_entry* null, %struct.rt_entry** %3, align 8
  br label %34

32:                                               ; preds = %25
  %33 = load %struct.rt_entry*, %struct.rt_entry** %6, align 8
  store %struct.rt_entry* %33, %struct.rt_entry** %3, align 8
  br label %34

34:                                               ; preds = %32, %31
  %35 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  ret %struct.rt_entry* %35
}

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @masktrim(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
