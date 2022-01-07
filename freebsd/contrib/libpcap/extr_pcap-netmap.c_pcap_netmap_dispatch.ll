; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netmap.c_pcap_netmap_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netmap.c_pcap_netmap_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64, i32, %struct.pcap_netmap* }
%struct.TYPE_4__ = type { i32 }
%struct.pcap_netmap = type { i32*, i32, %struct.nm_desc* }
%struct.nm_desc = type { i32 }
%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@PCAP_ERROR_BREAK = common dso_local global i32 0, align 4
@pcap_netmap_filter = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32*)* @pcap_netmap_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_netmap_dispatch(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pcap_netmap*, align 8
  %12 = alloca %struct.nm_desc*, align 8
  %13 = alloca %struct.pollfd, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load %struct.pcap_netmap*, %struct.pcap_netmap** %15, align 8
  store %struct.pcap_netmap* %16, %struct.pcap_netmap** %11, align 8
  %17 = load %struct.pcap_netmap*, %struct.pcap_netmap** %11, align 8
  %18 = getelementptr inbounds %struct.pcap_netmap, %struct.pcap_netmap* %17, i32 0, i32 2
  %19 = load %struct.nm_desc*, %struct.nm_desc** %18, align 8
  store %struct.nm_desc* %19, %struct.nm_desc** %12, align 8
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %13, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %13, i32 0, i32 1
  %22 = load i32, i32* @POLLIN, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %13, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %23, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.pcap_netmap*, %struct.pcap_netmap** %11, align 8
  %29 = getelementptr inbounds %struct.pcap_netmap, %struct.pcap_netmap* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.pcap_netmap*, %struct.pcap_netmap** %11, align 8
  %32 = getelementptr inbounds %struct.pcap_netmap, %struct.pcap_netmap* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  br label %33

33:                                               ; preds = %54, %4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @PCAP_ERROR_BREAK, align 4
  store i32 %41, i32* %5, align 4
  br label %62

42:                                               ; preds = %33
  %43 = load %struct.nm_desc*, %struct.nm_desc** %12, align 8
  %44 = bitcast %struct.nm_desc* %43 to i8*
  %45 = load i32, i32* %7, align 4
  %46 = load i64, i64* @pcap_netmap_filter, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = bitcast %struct.TYPE_5__* %48 to i8*
  %50 = call i32 @nm_dispatch(i8* %44, i32 %45, i8* %47, i8* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %60

54:                                               ; preds = %42
  store i64 0, i64* @errno, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @poll(%struct.pollfd* %13, i32 1, i32 %58)
  store i32 %59, i32* %10, align 4
  br label %33

60:                                               ; preds = %53
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %38
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @nm_dispatch(i8*, i32, i8*, i8*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
