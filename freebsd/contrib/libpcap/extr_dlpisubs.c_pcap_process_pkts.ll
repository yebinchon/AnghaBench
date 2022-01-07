; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_dlpisubs.c_pcap_process_pkts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_dlpisubs.c_pcap_process_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i64, %struct.TYPE_8__, i64, %struct.pcap_dlpi* }
%struct.TYPE_8__ = type { i32 }
%struct.pcap_dlpi = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.pcap_pkthdr = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_process_pkts(%struct.TYPE_10__* %0, i32 (i32*, %struct.pcap_pkthdr*, i32*)* %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32 (i32*, %struct.pcap_pkthdr*, i32*)*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pcap_dlpi*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.pcap_pkthdr, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32 (i32*, %struct.pcap_pkthdr*, i32*)* %1, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 5
  %23 = load %struct.pcap_dlpi*, %struct.pcap_dlpi** %22, align 8
  store %struct.pcap_dlpi* %23, %struct.pcap_dlpi** %14, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %18, align 8
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %17, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @min(i64 %31, i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32*, i32** %12, align 8
  store i32* %34, i32** %19, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %12, align 8
  %39 = load %struct.pcap_dlpi*, %struct.pcap_dlpi** %14, align 8
  %40 = getelementptr inbounds %struct.pcap_dlpi, %struct.pcap_dlpi* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %19, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i64 @bpf_filter(i32 %47, i32* %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %101

53:                                               ; preds = %6
  %54 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %20, i32 0, i32 2
  %55 = call i32 @gettimeofday(%struct.TYPE_11__* %54, i32* null)
  %56 = load i32, i32* %17, align 4
  %57 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %20, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %16, align 4
  %59 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %20, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %20, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = icmp sgt i32 %61, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %20, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %53
  %74 = load i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %9, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %19, align 8
  %77 = call i32 %74(i32* %75, %struct.pcap_pkthdr* %20, i32* %76)
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %73
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @PACKET_COUNT_IS_UNLIMITED(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %82
  %87 = load i32*, i32** %18, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = ptrtoint i32* %87 to i64
  %90 = ptrtoint i32* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  store i32* %96, i32** %98, align 8
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %7, align 4
  br label %105

100:                                              ; preds = %82, %73
  br label %101

101:                                              ; preds = %100, %6
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %86
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i64 @bpf_filter(i32, i32*, i32, i32) #1

declare dso_local i32 @gettimeofday(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @PACKET_COUNT_IS_UNLIMITED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
