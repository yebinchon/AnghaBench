; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_open_dead_with_tstamp_precision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_open_dead_with_tstamp_precision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@pcap_can_set_rfmon_dead = common dso_local global i32 0, align 4
@pcap_read_dead = common dso_local global i32 0, align 4
@pcap_inject_dead = common dso_local global i32 0, align 4
@pcap_setfilter_dead = common dso_local global i32 0, align 4
@pcap_setdirection_dead = common dso_local global i32 0, align 4
@pcap_set_datalink_dead = common dso_local global i32 0, align 4
@pcap_getnonblock_dead = common dso_local global i32 0, align 4
@pcap_setnonblock_dead = common dso_local global i32 0, align 4
@pcap_stats_dead = common dso_local global i32 0, align 4
@pcap_cleanup_dead = common dso_local global i32 0, align 4
@pcap_get_airpcap_handle_dead = common dso_local global i32 0, align 4
@pcap_getevent_dead = common dso_local global i32 0, align 4
@pcap_live_dump_dead = common dso_local global i32 0, align 4
@pcap_live_dump_ended_dead = common dso_local global i32 0, align 4
@pcap_oid_get_request_dead = common dso_local global i32 0, align 4
@pcap_oid_set_request_dead = common dso_local global i32 0, align 4
@pcap_sendqueue_transmit_dead = common dso_local global i32 0, align 4
@pcap_setbuff_dead = common dso_local global i32 0, align 4
@pcap_setmintocopy_dead = common dso_local global i32 0, align 4
@pcap_setmode_dead = common dso_local global i32 0, align 4
@pcap_setuserbuffer_dead = common dso_local global i32 0, align 4
@pcap_stats_ex_dead = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @pcap_open_dead_with_tstamp_precision(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %11 [
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %3, %3
  br label %12

11:                                               ; preds = %3
  store i32 129, i32* %7, align 4
  br label %12

12:                                               ; preds = %11, %10
  %13 = call %struct.TYPE_7__* @malloc(i32 120)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %65

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = call i32 @memset(%struct.TYPE_7__* %18, i32 0, i32 120)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 26
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @pcap_can_set_rfmon_dead, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 25
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @pcap_read_dead, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 24
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @pcap_inject_dead, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 23
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @pcap_setfilter_dead, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 22
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @pcap_setdirection_dead, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 21
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @pcap_set_datalink_dead, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 20
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @pcap_getnonblock_dead, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 19
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @pcap_setnonblock_dead, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 18
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @pcap_stats_dead, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 17
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @pcap_cleanup_dead, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %4, align 8
  br label %65

65:                                               ; preds = %17, %16
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %66
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
